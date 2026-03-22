.class public final Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;
.super Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;
.source "ImmersionBottomBackShortsDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog$a;,
        Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment<",
        "Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsBottomBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nImmersionBottomBackShortsDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionBottomBackShortsDialog.kt\ncom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,489:1\n1863#2,2:490\n*S KotlinDebug\n*F\n+ 1 ImmersionBottomBackShortsDialog.kt\ncom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog\n*L\n357#1:490,2\n*E\n"
    }
.end annotation


# static fields
.field public static final G:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private A:I

.field private B:Z

.field private C:Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private D:Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private E:Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final F:I

.field private o:Z

.field private final p:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final q:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final r:Lms/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lms/i<",
            "Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private t:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog$a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private u:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->G:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog$b;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/immersion/n;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/n;-><init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->p:Lms/i;

    .line 14
    .line 15
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/immersion/o;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/o;-><init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->q:Lms/i;

    .line 25
    .line 26
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/immersion/p;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/p;-><init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->r:Lms/i;

    .line 36
    .line 37
    new-instance v0, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->s:Ljava/util/ArrayList;

    .line 43
    .line 44
    const-string v0, ""

    .line 45
    .line 46
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->u:Ljava/lang/String;

    .line 47
    .line 48
    new-instance v0, Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;

    .line 49
    .line 50
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/immersion/q;

    .line 51
    .line 52
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/q;-><init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;)V

    .line 53
    .line 54
    .line 55
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;-><init>(Lat/n;)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->E:Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;

    .line 59
    .line 60
    sget v0, Lcom/startshorts/androidplayer/R$layout;->dialog_fragment_immersion_back_shorts_bottom:I

    .line 61
    .line 62
    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->F:I

    .line 63
    .line 64
    return-void
.end method

.method private static final A0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;)Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->m0()Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-class v0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 12
    .line 13
    return-object p0
.end method

.method private static final B0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;)Landroidx/lifecycle/ViewModelProvider;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final C0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->E:Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;->o()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getVideoUrl()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const-string v0, "pausePlay"

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->q(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->r:Lms/i;

    .line 29
    .line 30
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 35
    .line 36
    sget-object v1, Lcom/startshorts/androidplayer/viewmodel/player/b$d;->a:Lcom/startshorts/androidplayer/viewmodel/player/b$d;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->M(Lcom/startshorts/androidplayer/viewmodel/player/b;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    :goto_0
    return-void
.end method

.method private final D0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->E:Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;->o()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getVideoUrl()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const-string v0, "resumePlay"

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->q(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->r:Lms/i;

    .line 29
    .line 30
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 35
    .line 36
    sget-object v1, Lcom/startshorts/androidplayer/viewmodel/player/b$g;->a:Lcom/startshorts/androidplayer/viewmodel/player/b$g;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->M(Lcom/startshorts/androidplayer/viewmodel/player/b;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    :goto_0
    return-void
.end method

.method private final E0(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;)V
    .locals 3

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    if-eqz p1, :cond_1

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayContentRatingResponse()Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_1
    const/4 v0, 0x0

    .line 12
    :goto_0
    if-nez v0, :cond_2

    .line 13
    .line 14
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->C:Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;

    .line 15
    .line 16
    if-eqz p1, :cond_6

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;->f()V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_2
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->C:Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;

    .line 23
    .line 24
    if-nez v1, :cond_3

    .line 25
    .line 26
    new-instance v1, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;

    .line 27
    .line 28
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog$g;

    .line 29
    .line 30
    invoke-direct {v2, p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog$g;-><init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;-><init>(Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler$b;)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->C:Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;

    .line 37
    .line 38
    :cond_3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->D:Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->C:Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;

    .line 41
    .line 42
    if-eqz v1, :cond_4

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isTrailer()Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    invoke-virtual {v1, v2, p1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;->e(IZ)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-nez p1, :cond_5

    .line 57
    .line 58
    :cond_4
    const-string p1, ""

    .line 59
    .line 60
    :cond_5
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->C:Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;

    .line 61
    .line 62
    if-eqz v1, :cond_6

    .line 63
    .line 64
    invoke-virtual {v1, p1, v0, p2}, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;->g(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/ShortPlayContentInfo;Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;)V

    .line 65
    .line 66
    .line 67
    :cond_6
    :goto_1
    return-void
.end method

.method private final F0(I)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->E:Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;->s(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->E:Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;->o()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    sget-object v1, Lag/a;->a:Lag/a;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayCode()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getUpack()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v9

    .line 25
    const/16 v11, 0x17c

    .line 26
    .line 27
    const/4 v12, 0x0

    .line 28
    const-string v2, "immersion_back"

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    const/4 v5, 0x0

    .line 32
    const/4 v6, 0x0

    .line 33
    const/4 v7, 0x0

    .line 34
    const/4 v8, 0x0

    .line 35
    const/4 v10, 0x0

    .line 36
    invoke-static/range {v1 .. v12}, Lag/a;->d(Lag/a;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;ILcom/startshorts/androidplayer/bean/discover/DiscoverRanking;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->l0()Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;->J(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsBottomBinding;

    .line 51
    .line 52
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsBottomBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->s:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public static synthetic O(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->t0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic P(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;)Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->A0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;)Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;)Landroidx/lifecycle/ViewModelProvider;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->B0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;)Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic R(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;Lcom/startshorts/androidplayer/viewmodel/player/a;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->r0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;Lcom/startshorts/androidplayer/viewmodel/player/a;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic S(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;)Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->z0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;)Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic T(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;Lcom/startshorts/androidplayer/viewmodel/player/c;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->q0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;Lcom/startshorts/androidplayer/viewmodel/player/c;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic U(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;Landroid/view/TextureView;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->y0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;Landroid/view/TextureView;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic V(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;)Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->t:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic W(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;)Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->E:Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic X(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->s:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic Y(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;)Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->l0()Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic Z(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->w:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic a0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;)Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->C:Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic b0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->v0(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic c0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->x0(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic d0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->C0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic e0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->D0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic f0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->v:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic g0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->u:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic h0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->t:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog$a;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic i0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->w:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic j0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->F0(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final k0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    const/4 v3, -0x1

    .line 29
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 30
    .line 31
    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    const/4 v3, -0x2

    .line 38
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 39
    .line 40
    :cond_2
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 45
    .line 46
    .line 47
    :cond_3
    :goto_0
    return-void
.end method

.method private final l0()Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->q:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final m0()Landroidx/lifecycle/ViewModelProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->p:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/ViewModelProvider;

    .line 8
    .line 9
    return-object v0
.end method

.method private final n0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->C:Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;->f()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private final o0()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->l0()Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->u:Ljava/lang/String;

    .line 6
    .line 7
    iget v2, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->v:I

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;->E(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->F0(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private final p0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->r:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->H()Landroidx/lifecycle/MutableLiveData;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/immersion/l;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/l;-><init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;)V

    .line 16
    .line 17
    .line 18
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog$f;

    .line 19
    .line 20
    invoke-direct {v2, v1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog$f;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->r:Lms/i;

    .line 27
    .line 28
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->G()Landroidx/lifecycle/MutableLiveData;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/immersion/m;

    .line 39
    .line 40
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/m;-><init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;)V

    .line 41
    .line 42
    .line 43
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog$f;

    .line 44
    .line 45
    invoke-direct {v2, v1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog$f;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method private static final q0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;Lcom/startshorts/androidplayer/viewmodel/player/c;)Lkotlin/Unit;
    .locals 9

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/player/c$j;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/player/c$j;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/player/c$j;->b()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->y:I

    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/player/c$c;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->E:Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;->o()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->w0()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->dismiss()V

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->t:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog$a;

    .line 38
    .line 39
    if-eqz p0, :cond_8

    .line 40
    .line 41
    invoke-interface {p0, p1, v1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog$a;->b(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Z)V

    .line 42
    .line 43
    .line 44
    goto/16 :goto_0

    .line 45
    .line 46
    :cond_2
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/player/c$h;

    .line 47
    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->E:Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;->o()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-nez v0, :cond_3

    .line 57
    .line 58
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 59
    .line 60
    return-object p0

    .line 61
    :cond_3
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->E:Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;->r()V

    .line 64
    .line 65
    .line 66
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->l0()Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->l0()Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/player/c$h;

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/player/c$h;->a()J

    .line 80
    .line 81
    .line 82
    move-result-wide v1

    .line 83
    invoke-virtual {p0, v0, v1, v2}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;->B(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;J)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/player/c$b;

    .line 88
    .line 89
    if-eqz v0, :cond_6

    .line 90
    .line 91
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->E:Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;->o()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-nez v0, :cond_5

    .line 98
    .line 99
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 100
    .line 101
    return-object p0

    .line 102
    :cond_5
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->l0()Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/player/c$b;

    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/player/c$b;->c()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/player/c$b;->b()I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/player/c$b;->a()I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;->D(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;III)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_6
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/player/c$d;

    .line 125
    .line 126
    if-eqz v0, :cond_8

    .line 127
    .line 128
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->E:Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;

    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;->o()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    if-nez p0, :cond_7

    .line 135
    .line 136
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 137
    .line 138
    return-object p0

    .line 139
    :cond_7
    const/4 v0, 0x0

    .line 140
    const/4 v2, 0x0

    .line 141
    invoke-static {p0, v0, v1, v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->parseVideoUrl$default(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;IILjava/lang/Object;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    sget-object v3, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 146
    .line 147
    new-instance v6, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog$initPlayerVM$1$1;

    .line 148
    .line 149
    invoke-direct {v6, p0, p1, v0, v2}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog$initPlayerVM$1$1;-><init>(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/viewmodel/player/c;Ljava/lang/String;Lrs/c;)V

    .line 150
    .line 151
    .line 152
    const/4 v7, 0x2

    .line 153
    const/4 v8, 0x0

    .line 154
    const-string v4, "logPlayFailed"

    .line 155
    .line 156
    const/4 v5, 0x0

    .line 157
    invoke-static/range {v3 .. v8}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 158
    .line 159
    .line 160
    sget-object p0, Lcom/startshorts/androidplayer/utils/ResourceHandler;->a:Lcom/startshorts/androidplayer/utils/ResourceHandler;

    .line 161
    .line 162
    const/4 p1, 0x2

    .line 163
    invoke-static {p0, v0, v2, p1, v2}, Lcom/startshorts/androidplayer/utils/ResourceHandler;->m(Lcom/startshorts/androidplayer/utils/ResourceHandler;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    :cond_8
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 167
    .line 168
    return-object p0
.end method

.method private static final r0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;Lcom/startshorts/androidplayer/viewmodel/player/a;)Lkotlin/Unit;
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/player/a$a;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->E:Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;->o()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/player/a$a;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/player/a$a;->a()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iput v1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->x:I

    .line 23
    .line 24
    sget-object v1, Lud/b;->a:Lud/b;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/player/a$a;->a()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-virtual {v1, v0, p1}, Lud/b;->E3(II)V

    .line 35
    .line 36
    .line 37
    iget p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->z:I

    .line 38
    .line 39
    add-int/lit16 p1, p1, 0xc8

    .line 40
    .line 41
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->z:I

    .line 42
    .line 43
    iget p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->A:I

    .line 44
    .line 45
    const/high16 v0, 0x43480000    # 200.0f

    .line 46
    .line 47
    invoke-static {v0}, Lbt/a;->c(F)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    add-int/2addr p1, v0

    .line 52
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->A:I

    .line 53
    .line 54
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 55
    .line 56
    return-object p0

    .line 57
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 58
    .line 59
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 60
    .line 61
    .line 62
    throw p0
.end method

.method private final s0()V
    .locals 8

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->a:Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->j()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsBottomBinding;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsBottomBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->j()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsBottomBinding;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsBottomBinding;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 36
    .line 37
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog$c;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog$c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsBottomBinding;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsBottomBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 52
    .line 53
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog$d;

    .line 54
    .line 55
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog$d;-><init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsBottomBinding;

    .line 66
    .line 67
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsBottomBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 68
    .line 69
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->s:Ljava/util/ArrayList;

    .line 70
    .line 71
    const/4 v2, 0x0

    .line 72
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsBottomBinding;

    .line 90
    .line 91
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsBottomBinding;->a:Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 102
    .line 103
    const/high16 v3, 0x42c80000    # 100.0f

    .line 104
    .line 105
    invoke-static {v3}, Ljk/g;->a(F)I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    const/high16 v4, 0x41800000    # 16.0f

    .line 110
    .line 111
    invoke-static {v4}, Ljk/g;->a(F)I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    add-int v5, v3, v4

    .line 116
    .line 117
    mul-int/lit8 v5, v5, 0x2

    .line 118
    .line 119
    sub-int v5, v1, v5

    .line 120
    .line 121
    int-to-float v5, v5

    .line 122
    const v6, 0x3faa9fbe    # 1.333f

    .line 123
    .line 124
    .line 125
    mul-float/2addr v6, v5

    .line 126
    const v7, 0x3ff33333    # 1.9f

    .line 127
    .line 128
    .line 129
    mul-float/2addr v5, v7

    .line 130
    int-to-float v1, v1

    .line 131
    div-float/2addr v5, v1

    .line 132
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    float-to-int v6, v6

    .line 137
    iput v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 138
    .line 139
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->E:Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->D(Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 142
    .line 143
    .line 144
    const/4 v1, 0x1

    .line 145
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->F(Z)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 146
    .line 147
    .line 148
    const/16 v1, 0x8

    .line 149
    .line 150
    invoke-virtual {v0, v1, v5}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->O(IF)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v4}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->M(I)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v3, v3}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->Q(II)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->P(Z)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->A(Landroidx/lifecycle/Lifecycle;)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 167
    .line 168
    .line 169
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/immersion/k;

    .line 170
    .line 171
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/k;-><init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->J(Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$c;)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 175
    .line 176
    .line 177
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog$e;

    .line 178
    .line 179
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog$e;-><init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->B(Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$b;)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 183
    .line 184
    .line 185
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->s:Ljava/util/ArrayList;

    .line 186
    .line 187
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->g(Ljava/util/List;)V

    .line 188
    .line 189
    .line 190
    return-void
.end method

.method private static final t0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;Landroid/view/View;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsBottomBinding;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsBottomBinding;->a:Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->getData()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-le v0, p2, :cond_0

    .line 18
    .line 19
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string p2, "null cannot be cast to non-null type com.startshorts.androidplayer.bean.shorts.BaseEpisode"

    .line 24
    .line 25
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    check-cast p1, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 29
    .line 30
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->l0()Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    const-string v0, "cover"

    .line 35
    .line 36
    invoke-virtual {p2, v0, p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;->G(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->t:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog$a;

    .line 40
    .line 41
    if-eqz p0, :cond_0

    .line 42
    .line 43
    const/4 p2, 0x0

    .line 44
    invoke-interface {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog$a;->b(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Z)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method private final v0(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->E:Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;->q(I)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->x:I

    .line 11
    .line 12
    iget v1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->y:I

    .line 13
    .line 14
    iget v2, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->z:I

    .line 15
    .line 16
    iget v3, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->A:I

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->l0()Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v4, p1, v0, v1}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;->I(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;II)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->l0()Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0, p1, v2, v3}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;->H(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;II)V

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->x:I

    .line 34
    .line 35
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->y:I

    .line 36
    .line 37
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->A:I

    .line 38
    .line 39
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->z:I

    .line 40
    .line 41
    return-void
.end method

.method private final w0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->E:Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;->p()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->x0(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private final x0(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->E:Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;->q(I)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->x:I

    .line 11
    .line 12
    iget v1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->y:I

    .line 13
    .line 14
    iget v2, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->z:I

    .line 15
    .line 16
    iget v3, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->A:I

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->l0()Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v4, p1, v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;->K(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;I)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->l0()Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v4, p1, v0, v1}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;->I(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;II)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->l0()Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0, p1, v2, v3}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;->H(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;II)V

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->x:I

    .line 41
    .line 42
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->y:I

    .line 43
    .line 44
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->A:I

    .line 45
    .line 46
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->z:I

    .line 47
    .line 48
    return-void
.end method

.method private static final y0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;Landroid/view/TextureView;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;)Lkotlin/Unit;
    .locals 7

    .line 1
    const-string v0, "renderView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "data"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "shortRatingLayout"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-static {p2, v2, v0, v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->parseVideoUrl$default(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;IILjava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_0
    sget-object v3, Lpf/l;->a:Lpf/l;

    .line 29
    .line 30
    invoke-virtual {v3, v1}, Lpf/l;->b(Ljava/lang/String;)Lcom/ss/ttvideoengine/source/DirectUrlSource;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->r:Lms/i;

    .line 35
    .line 36
    invoke-interface {v3}, Lms/i;->getValue()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 41
    .line 42
    sget-object v4, Lfk/u;->a:Lfk/u;

    .line 43
    .line 44
    invoke-virtual {v4}, Lfk/u;->b()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    new-instance v5, Llf/s;

    .line 49
    .line 50
    invoke-direct {v5}, Llf/s;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v6, "ImmersionBack"

    .line 54
    .line 55
    invoke-virtual {v5, v6}, Llf/s;->y(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5, p1}, Llf/s;->u(Landroid/view/View;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5, v1}, Llf/s;->w(Lcom/ss/ttvideoengine/strategy/source/StrategySource;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5, v2}, Llf/s;->v(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getNeedDecrypt()Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_1

    .line 72
    .line 73
    new-instance p1, Lcom/startshorts/androidplayer/manager/player/feature/d;

    .line 74
    .line 75
    invoke-direct {p1}, Lcom/startshorts/androidplayer/manager/player/feature/d;-><init>()V

    .line 76
    .line 77
    .line 78
    new-array v0, v0, [Lcom/startshorts/androidplayer/manager/player/feature/IVideoPlayerFeature;

    .line 79
    .line 80
    aput-object p1, v0, v2

    .line 81
    .line 82
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {v5, p1}, Llf/s;->o(Ljava/util/List;)V

    .line 87
    .line 88
    .line 89
    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 90
    .line 91
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/player/b$e;

    .line 92
    .line 93
    invoke-direct {p1, v4, v5}, Lcom/startshorts/androidplayer/viewmodel/player/b$e;-><init>(Landroid/content/Context;Llf/s;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, p1}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->M(Lcom/startshorts/androidplayer/viewmodel/player/b;)V

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->C:Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;

    .line 100
    .line 101
    if-eqz p1, :cond_2

    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;->i()V

    .line 104
    .line 105
    .line 106
    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->E0(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;)V

    .line 107
    .line 108
    .line 109
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 110
    .line 111
    return-object p0
.end method

.method private static final z0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;)Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->m0()Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-class v0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;

    .line 12
    .line 13
    return-object p0
.end method


# virtual methods
.method public l()F
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->F:I

    .line 2
    .line 3
    return v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "dialog"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->l0()Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->u:Ljava/lang/String;

    .line 14
    .line 15
    iget v1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->v:I

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;->A(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;->onPause()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->B:Z

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->C0()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->n0()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->B:Z

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->o:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->o:Z

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->D0()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->E:Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;->o()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->D:Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;

    .line 25
    .line 26
    invoke-direct {p0, v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->E0(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->k0()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->p0()V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->s0()V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->o0()V

    .line 23
    .line 24
    .line 25
    sget-object p1, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->a:Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/immersion/ImmersionRepo;->f()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "ImmersionBottomBackShortsDialog"

    .line 2
    .line 3
    return-object v0
.end method

.method public s()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;->s()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->C:Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;->h()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final u0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->B:Z

    .line 2
    .line 3
    return v0
.end method
