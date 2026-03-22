.class public final Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;
.super Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;
.source "ImmersionBackShortsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$a;,
        Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment<",
        "Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nImmersionBackShortsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionBackShortsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n+ 4 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,571:1\n1863#2,2:572\n774#2:578\n865#2,2:579\n1872#2,3:581\n46#3:574\n1328#4,3:575\n*S KotlinDebug\n*F\n+ 1 ImmersionBackShortsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment\n*L\n404#1:572,2\n339#1:578\n339#1:579,2\n351#1:581,3\n363#1:574\n368#1:575,3\n*E\n"
    }
.end annotation


# static fields
.field public static final A:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private i:Z

.field private final j:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final k:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final l:Lms/i;
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

.field private m:Ljava/util/ArrayList;
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

.field private n:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private o:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private x:Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private y:Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->A:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$b;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/immersion/a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/a;-><init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->j:Lms/i;

    .line 14
    .line 15
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/immersion/b;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->k:Lms/i;

    .line 25
    .line 26
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/immersion/c;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->l:Lms/i;

    .line 36
    .line 37
    new-instance v0, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->m:Ljava/util/ArrayList;

    .line 43
    .line 44
    const-string v0, ""

    .line 45
    .line 46
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->o:Ljava/lang/String;

    .line 47
    .line 48
    new-instance v0, Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;

    .line 49
    .line 50
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/immersion/d;

    .line 51
    .line 52
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/d;-><init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;)V

    .line 53
    .line 54
    .line 55
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;-><init>(Lat/n;)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->y:Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;

    .line 59
    .line 60
    sget v0, Lcom/startshorts/androidplayer/R$layout;->dialog_fragment_immersion_back_shorts:I

    .line 61
    .line 62
    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->z:I

    .line 63
    .line 64
    return-void
.end method

.method private final A0(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;)V
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
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->w:Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;

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
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->w:Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;

    .line 23
    .line 24
    if-nez v1, :cond_3

    .line 25
    .line 26
    new-instance v1, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;

    .line 27
    .line 28
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$g;

    .line 29
    .line 30
    invoke-direct {v2, p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$g;-><init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;-><init>(Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler$b;)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->w:Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;

    .line 37
    .line 38
    :cond_3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->x:Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->w:Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;

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
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->w:Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;

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

.method private final B0(I)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->y:Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;->s(I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->y:Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;->o()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsBinding;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 22
    .line 23
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/immersion/h;

    .line 24
    .line 25
    invoke-direct {v1, p1, p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/h;-><init>(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    sget-object v2, Lag/a;->a:Lag/a;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayCode()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getUpack()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v10

    .line 41
    const/16 v12, 0x17c

    .line 42
    .line 43
    const/4 v13, 0x0

    .line 44
    const-string v3, "immersion_back"

    .line 45
    .line 46
    const/4 v5, 0x0

    .line 47
    const/4 v6, 0x0

    .line 48
    const/4 v7, 0x0

    .line 49
    const/4 v8, 0x0

    .line 50
    const/4 v9, 0x0

    .line 51
    const/4 v11, 0x0

    .line 52
    invoke-static/range {v2 .. v13}, Lag/a;->d(Lag/a;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;ILcom/startshorts/androidplayer/bean/discover/DiscoverRanking;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->f0()Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;->J(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method private static final C0(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;)V
    .locals 11

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->Q0()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->isEnable()Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_e

    .line 22
    .line 23
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 24
    .line 25
    const-string v1, "ImmersionBackShortsFragment"

    .line 26
    .line 27
    const-string v2, "ImmersionBackShortsFragment updatePlayPosition"

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getCheckedShortPlayName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsBinding;

    .line 50
    .line 51
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsBinding;

    .line 61
    .line 62
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 63
    .line 64
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsBinding;

    .line 73
    .line 74
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 75
    .line 76
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 77
    .line 78
    .line 79
    :goto_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsBinding;

    .line 84
    .line 85
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsBinding;->b:Lcom/google/android/flexbox/FlexboxLayout;

    .line 86
    .line 87
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getCornerLabelText()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getCornerLabelStyle()I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    new-instance v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 107
    .line 108
    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 109
    .line 110
    .line 111
    const/4 v5, 0x0

    .line 112
    const/4 v6, 0x1

    .line 113
    if-lez v3, :cond_3

    .line 114
    .line 115
    if-eqz v2, :cond_3

    .line 116
    .line 117
    invoke-static {v2}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    if-eqz v7, :cond_2

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_2
    move v7, v6

    .line 125
    goto :goto_3

    .line 126
    :cond_3
    :goto_2
    move v7, v5

    .line 127
    :goto_3
    iput-boolean v7, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getLabelList()Ljava/util/List;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    const/4 v7, 0x0

    .line 134
    if-eqz p0, :cond_7

    .line 135
    .line 136
    check-cast p0, Ljava/lang/Iterable;

    .line 137
    .line 138
    new-instance v8, Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    :cond_4
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 148
    .line 149
    .line 150
    move-result v9

    .line 151
    if-eqz v9, :cond_8

    .line 152
    .line 153
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v9

    .line 157
    move-object v10, v9

    .line 158
    check-cast v10, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 159
    .line 160
    invoke-virtual {v10}, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;->getLabelName()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v10

    .line 164
    if-eqz v10, :cond_6

    .line 165
    .line 166
    invoke-static {v10}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    .line 167
    .line 168
    .line 169
    move-result v10

    .line 170
    if-eqz v10, :cond_5

    .line 171
    .line 172
    goto :goto_5

    .line 173
    :cond_5
    move v10, v5

    .line 174
    goto :goto_6

    .line 175
    :cond_6
    :goto_5
    move v10, v6

    .line 176
    :goto_6
    if-nez v10, :cond_4

    .line 177
    .line 178
    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_7
    move-object v8, v7

    .line 183
    :cond_8
    iget-boolean p0, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 184
    .line 185
    if-nez p0, :cond_a

    .line 186
    .line 187
    if-eqz v8, :cond_9

    .line 188
    .line 189
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 190
    .line 191
    .line 192
    move-result p0

    .line 193
    if-eqz p0, :cond_a

    .line 194
    .line 195
    :cond_9
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 196
    .line 197
    .line 198
    goto/16 :goto_8

    .line 199
    .line 200
    :cond_a
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 201
    .line 202
    .line 203
    iget-boolean p0, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 204
    .line 205
    const-string v9, "inflate(...)"

    .line 206
    .line 207
    if-eqz p0, :cond_b

    .line 208
    .line 209
    invoke-static {v1, v0, v6}, Lcom/startshorts/androidplayer/databinding/ViewShortsImmersionTagNormalBinding;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/startshorts/androidplayer/databinding/ViewShortsImmersionTagNormalBinding;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    invoke-static {p0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    iget-object p0, p0, Lcom/startshorts/androidplayer/databinding/ViewShortsImmersionTagNormalBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 217
    .line 218
    const-string v10, "tvTag"

    .line 219
    .line 220
    invoke-static {p0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1, p0, v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->z0(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 224
    .line 225
    .line 226
    :cond_b
    if-eqz v8, :cond_d

    .line 227
    .line 228
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 233
    .line 234
    .line 235
    move-result p1

    .line 236
    if-eqz p1, :cond_d

    .line 237
    .line 238
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    add-int/lit8 v2, v5, 0x1

    .line 243
    .line 244
    if-gez v5, :cond_c

    .line 245
    .line 246
    invoke-static {}, Lkotlin/collections/CollectionsKt;->y()V

    .line 247
    .line 248
    .line 249
    :cond_c
    check-cast p1, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 250
    .line 251
    invoke-static {v1, v0, v6}, Lcom/startshorts/androidplayer/databinding/ViewShortsImmersionTagClickableBinding;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/startshorts/androidplayer/databinding/ViewShortsImmersionTagClickableBinding;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    iget-object v5, v3, Lcom/startshorts/androidplayer/databinding/ViewShortsImmersionTagClickableBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 259
    .line 260
    invoke-virtual {v5, v7, v7, v7, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 261
    .line 262
    .line 263
    iget-object v5, v3, Lcom/startshorts/androidplayer/databinding/ViewShortsImmersionTagClickableBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 264
    .line 265
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;->getLabelName()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    .line 271
    .line 272
    iget-object p1, v3, Lcom/startshorts/androidplayer/databinding/ViewShortsImmersionTagClickableBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 273
    .line 274
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$h;

    .line 275
    .line 276
    invoke-direct {v3}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$h;-><init>()V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    .line 281
    .line 282
    move v5, v2

    .line 283
    goto :goto_7

    .line 284
    :cond_d
    new-instance p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/i;

    .line 285
    .line 286
    invoke-direct {p0, v0, v4}, Lcom/startshorts/androidplayer/ui/fragment/immersion/i;-><init>(Lcom/google/android/flexbox/FlexboxLayout;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 290
    .line 291
    .line 292
    goto :goto_8

    .line 293
    :cond_e
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 294
    .line 295
    .line 296
    move-result-object p0

    .line 297
    check-cast p0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsBinding;

    .line 298
    .line 299
    iget-object p0, p0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 300
    .line 301
    invoke-static {p0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 305
    .line 306
    .line 307
    move-result-object p0

    .line 308
    check-cast p0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsBinding;

    .line 309
    .line 310
    iget-object p0, p0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsBinding;->b:Lcom/google/android/flexbox/FlexboxLayout;

    .line 311
    .line 312
    invoke-static {p0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 313
    .line 314
    .line 315
    :goto_8
    return-void
.end method

.method private static final D0(Lcom/google/android/flexbox/FlexboxLayout;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 9

    .line 1
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-static {p0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-static {p0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-interface {v2}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    move v3, v0

    .line 32
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_8

    .line 37
    .line 38
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    add-int/lit8 v5, v3, 0x1

    .line 43
    .line 44
    if-gez v3, :cond_1

    .line 45
    .line 46
    invoke-static {}, Lkotlin/collections/CollectionsKt;->y()V

    .line 47
    .line 48
    .line 49
    :cond_1
    check-cast v4, Landroid/view/View;

    .line 50
    .line 51
    sget v6, Lcom/startshorts/androidplayer/R$id;->tv_tag:I

    .line 52
    .line 53
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    check-cast v6, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 58
    .line 59
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    const/4 v8, 0x1

    .line 64
    if-le v7, v1, :cond_2

    .line 65
    .line 66
    move v7, v8

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    move v7, v0

    .line 69
    :goto_1
    if-eqz v6, :cond_3

    .line 70
    .line 71
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;->c()Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-ne v6, v8, :cond_3

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_3
    move v8, v0

    .line 79
    :goto_2
    if-nez v7, :cond_5

    .line 80
    .line 81
    if-eqz v8, :cond_4

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_4
    invoke-static {v4}, Ljk/b0;->l(Landroid/view/View;)V

    .line 85
    .line 86
    .line 87
    goto :goto_4

    .line 88
    :cond_5
    :goto_3
    iget-boolean v6, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 89
    .line 90
    if-eqz v6, :cond_6

    .line 91
    .line 92
    invoke-static {v4}, Ljk/b0;->d(Landroid/view/View;)V

    .line 93
    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_6
    if-nez v3, :cond_7

    .line 97
    .line 98
    invoke-static {p0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :cond_7
    invoke-static {v4}, Ljk/b0;->d(Landroid/view/View;)V

    .line 103
    .line 104
    .line 105
    :goto_4
    move v3, v5

    .line 106
    goto :goto_0

    .line 107
    :cond_8
    return-void
.end method

.method public static synthetic F(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;)Landroidx/lifecycle/ViewModelProvider;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->u0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;)Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic G(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->C0(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic H(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->n0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic I(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;Lcom/startshorts/androidplayer/viewmodel/player/c;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->k0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;Lcom/startshorts/androidplayer/viewmodel/player/c;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic J(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;Lcom/startshorts/androidplayer/viewmodel/player/a;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->l0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;Lcom/startshorts/androidplayer/viewmodel/player/a;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic K(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;Landroid/view/TextureView;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->r0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;Landroid/view/TextureView;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic L(Lcom/google/android/flexbox/FlexboxLayout;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->D0(Lcom/google/android/flexbox/FlexboxLayout;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic M(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;)Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->s0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;)Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic N(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;)Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->t0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;)Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic O(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;)Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->n:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic P(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;)Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->y:Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic Q(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->m:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic R(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;)Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->f0()Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic S(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->r:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic T(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;)Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->w:Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic U(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->o0(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic V(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->q0(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic W(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->v0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic X(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->w0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic Y(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->p:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic Z(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->o:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic a0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->n:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$a;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic b0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->r:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic c0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->q:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic d0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->B0(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final e0()V
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

.method private final f0()Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->k:Lms/i;

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

.method private final g0()Landroidx/lifecycle/ViewModelProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->j:Lms/i;

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

.method private final h0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->w:Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;

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

.method private final i0()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->f0()Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->o:Ljava/lang/String;

    .line 6
    .line 7
    iget v2, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->p:I

    .line 8
    .line 9
    iget v3, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->q:I

    .line 10
    .line 11
    sget-object v4, Lyh/x2;->a:Lyh/x2;

    .line 12
    .line 13
    invoke-virtual {v4}, Lyh/x2;->d()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;->F(Ljava/lang/String;III)V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->B0(I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private final j0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->l:Lms/i;

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
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/immersion/e;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/e;-><init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;)V

    .line 16
    .line 17
    .line 18
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$f;

    .line 19
    .line 20
    invoke-direct {v2, v1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$f;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->l:Lms/i;

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
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/immersion/f;

    .line 39
    .line 40
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/f;-><init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;)V

    .line 41
    .line 42
    .line 43
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$f;

    .line 44
    .line 45
    invoke-direct {v2, v1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$f;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method private static final k0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;Lcom/startshorts/androidplayer/viewmodel/player/c;)Lkotlin/Unit;
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
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->t:I

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
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->y:Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;

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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->p0()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->dismiss()V

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->n:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$a;

    .line 38
    .line 39
    if-eqz p0, :cond_8

    .line 40
    .line 41
    invoke-interface {p0, p1, v1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$a;->b(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Z)V

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->y:Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;

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
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->y:Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;->r()V

    .line 64
    .line 65
    .line 66
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->f0()Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->f0()Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->y:Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;

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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->f0()Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;

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
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->y:Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;

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
    new-instance v6, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$initPlayerVM$1$1;

    .line 148
    .line 149
    invoke-direct {v6, p0, p1, v0, v2}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$initPlayerVM$1$1;-><init>(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/viewmodel/player/c;Ljava/lang/String;Lrs/c;)V

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

.method private static final l0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;Lcom/startshorts/androidplayer/viewmodel/player/a;)Lkotlin/Unit;
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/player/a$a;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->y:Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;

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
    iput v1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->s:I

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
    iget p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->u:I

    .line 38
    .line 39
    add-int/lit16 p1, p1, 0xc8

    .line 40
    .line 41
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->u:I

    .line 42
    .line 43
    iget p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->v:I

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
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->v:I

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

.method private final m0()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$c;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsBinding;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsBinding;->d:Landroid/widget/FrameLayout;

    .line 24
    .line 25
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$d;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$d;-><init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsBinding;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsBinding;->a:Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 50
    .line 51
    sget-object v2, Lfk/z;->a:Lfk/z;

    .line 52
    .line 53
    invoke-virtual {v2}, Lfk/z;->k()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-virtual {v2}, Lfk/z;->b()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    add-int v4, v3, v2

    .line 62
    .line 63
    mul-int/lit8 v4, v4, 0x2

    .line 64
    .line 65
    sub-int v4, v1, v4

    .line 66
    .line 67
    int-to-float v4, v4

    .line 68
    const v5, 0x3faa5e35    # 1.331f

    .line 69
    .line 70
    .line 71
    mul-float/2addr v5, v4

    .line 72
    const/high16 v6, 0x3f800000    # 1.0f

    .line 73
    .line 74
    mul-float/2addr v4, v6

    .line 75
    int-to-float v1, v1

    .line 76
    div-float/2addr v4, v1

    .line 77
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    float-to-int v5, v5

    .line 82
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 83
    .line 84
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->y:Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->D(Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 87
    .line 88
    .line 89
    const/4 v1, 0x1

    .line 90
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->F(Z)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 91
    .line 92
    .line 93
    const/16 v1, 0x8

    .line 94
    .line 95
    invoke-virtual {v0, v1, v4}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->O(IF)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->M(I)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v3, v3}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->Q(II)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 102
    .line 103
    .line 104
    const/4 v1, 0x0

    .line 105
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->P(Z)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->A(Landroidx/lifecycle/Lifecycle;)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 113
    .line 114
    .line 115
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/immersion/g;

    .line 116
    .line 117
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/g;-><init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->J(Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$c;)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 121
    .line 122
    .line 123
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$e;

    .line 124
    .line 125
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$e;-><init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->B(Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$b;)Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 129
    .line 130
    .line 131
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->m:Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->g(Ljava/util/List;)V

    .line 134
    .line 135
    .line 136
    return-void
.end method

.method private static final n0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;Landroid/view/View;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsBinding;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsBinding;->a:Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->f0()Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;

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
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->n:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$a;

    .line 40
    .line 41
    if-eqz p0, :cond_0

    .line 42
    .line 43
    const/4 p2, 0x0

    .line 44
    invoke-interface {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment$a;->b(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Z)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method private final o0(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->y:Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;

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
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->s:I

    .line 11
    .line 12
    iget v1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->t:I

    .line 13
    .line 14
    iget v2, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->u:I

    .line 15
    .line 16
    iget v3, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->v:I

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->f0()Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v4, p1, v0, v1}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;->I(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;II)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->f0()Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;

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
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->s:I

    .line 34
    .line 35
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->t:I

    .line 36
    .line 37
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->v:I

    .line 38
    .line 39
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->u:I

    .line 40
    .line 41
    return-void
.end method

.method private final p0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->y:Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;

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
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->q0(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private final q0(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->y:Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;

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
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->s:I

    .line 11
    .line 12
    iget v1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->t:I

    .line 13
    .line 14
    iget v2, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->u:I

    .line 15
    .line 16
    iget v3, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->v:I

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->f0()Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v4, p1, v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;->K(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;I)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->f0()Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v4, p1, v0, v1}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;->I(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;II)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->f0()Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;

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
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->s:I

    .line 41
    .line 42
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->t:I

    .line 43
    .line 44
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->v:I

    .line 45
    .line 46
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->u:I

    .line 47
    .line 48
    return-void
.end method

.method private static final r0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;Landroid/view/TextureView;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;)Lkotlin/Unit;
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
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->l:Lms/i;

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
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->w:Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;

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
    invoke-direct {p0, p2, p3}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->A0(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;)V

    .line 107
    .line 108
    .line 109
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 110
    .line 111
    return-object p0
.end method

.method private static final s0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;)Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->g0()Landroidx/lifecycle/ViewModelProvider;

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

.method private static final t0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;)Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->g0()Landroidx/lifecycle/ViewModelProvider;

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

.method private static final u0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;)Landroidx/lifecycle/ViewModelProvider;
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

.method private final v0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->y:Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;

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
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->q(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->l:Lms/i;

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

.method private final w0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->y:Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;

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
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->q(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->l:Lms/i;

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

.method private final x0(Landroid/widget/TextView;)V
    .locals 3

    .line 1
    const/high16 v0, 0x40800000    # 4.0f

    .line 2
    .line 3
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p1, v1, v2, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final y0(Landroid/widget/TextView;)V
    .locals 3

    .line 1
    sget-object v0, Lfk/v;->a:Lfk/v;

    .line 2
    .line 3
    invoke-virtual {v0}, Lfk/v;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/high16 v1, 0x40800000    # 4.0f

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {v1}, Ljk/g;->a(F)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p1, v0, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {v1}, Ljk/g;->a(F)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p1, v2, v2, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 25
    .line 26
    .line 27
    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    .line 28
    .line 29
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 34
    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->z:I

    .line 2
    .line 3
    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "ImmersionBackShortsFragment"

    .line 2
    .line 3
    return-object v0
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
    invoke-super {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->f0()Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->o:Ljava/lang/String;

    .line 14
    .line 15
    iget v1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->p:I

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionBackShortViewModel;->A(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->v0()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->h0()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->i:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->i:Z

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->w0()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->y:Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;->o()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->x:Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;

    .line 22
    .line 23
    invoke-direct {p0, v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->A0(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;)V

    .line 24
    .line 25
    .line 26
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
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->e0()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->j0()V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->m0()V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->i0()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public t()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->t()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->w:Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingHandler;

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

.method public final z0(Landroid/widget/TextView;ILjava/lang/String;)V
    .locals 2
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
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
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    if-eq p2, v1, :cond_3

    .line 12
    .line 13
    const/4 v1, 0x3

    .line 14
    if-eq p2, v1, :cond_2

    .line 15
    .line 16
    const/4 v1, 0x5

    .line 17
    if-eq p2, v1, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x6

    .line 20
    if-eq p2, v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    sget v1, Lcom/startshorts/androidplayer/R$color;->drama_member_only_label:I

    .line 28
    .line 29
    invoke-virtual {p2, v1}, Landroid/content/Context;->getColor(I)I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_shorts_member_only_label:I

    .line 41
    .line 42
    invoke-static {p2, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p1, p2, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->y0(Landroid/widget/TextView;)V

    .line 50
    .line 51
    .line 52
    sget p2, Lcom/startshorts/androidplayer/R$drawable;->bg_short_label_style_member_only:I

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    sget v0, Lcom/startshorts/androidplayer/R$color;->color_common_white:I

    .line 63
    .line 64
    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->x0(Landroid/widget/TextView;)V

    .line 72
    .line 73
    .line 74
    sget p2, Lcom/startshorts/androidplayer/R$drawable;->bg_shorts_label_style_new:I

    .line 75
    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    sget v0, Lcom/startshorts/androidplayer/R$color;->color_common_white:I

    .line 85
    .line 86
    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    .line 92
    .line 93
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->x0(Landroid/widget/TextView;)V

    .line 94
    .line 95
    .line 96
    sget p2, Lcom/startshorts/androidplayer/R$drawable;->bg_shorts_label_style_hot:I

    .line 97
    .line 98
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    sget v1, Lcom/startshorts/androidplayer/R$color;->color_common_white:I

    .line 107
    .line 108
    invoke-virtual {p2, v1}, Landroid/content/Context;->getColor(I)I

    .line 109
    .line 110
    .line 111
    move-result p2

    .line 112
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_shorts_excusive_label:I

    .line 120
    .line 121
    invoke-static {p2, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    invoke-virtual {p1, p2, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 126
    .line 127
    .line 128
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->y0(Landroid/widget/TextView;)V

    .line 129
    .line 130
    .line 131
    sget p2, Lcom/startshorts/androidplayer/R$drawable;->bg_shorts_label_style_exclusive:I

    .line 132
    .line 133
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 134
    .line 135
    .line 136
    :goto_0
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    .line 138
    .line 139
    return-void
.end method
