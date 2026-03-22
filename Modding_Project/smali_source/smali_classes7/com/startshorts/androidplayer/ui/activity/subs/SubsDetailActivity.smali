.class public final Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;
.super Lcom/startshorts/androidplayer/ui/activity/base/ListActivity;
.source "SubsDetailActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/activity/base/ListActivity<",
        "Lcom/startshorts/androidplayer/bean/subs/SubsPrivilege;",
        "Lcom/startshorts/androidplayer/databinding/ActivitySubsDetailBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSubsDetailActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubsDetailActivity.kt\ncom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,571:1\n360#2,7:572\n*S KotlinDebug\n*F\n+ 1 SubsDetailActivity.kt\ncom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity\n*L\n154#1:572,7\n*E\n"
    }
.end annotation


# static fields
.field public static final Q:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private D:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private E:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private F:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private G:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private H:Z

.field private final I:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final J:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private K:Z

.field private final L:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private M:Lhi/b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private N:J

.field private O:J

.field private P:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->Q:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/base/ListActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lci/t;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lci/t;-><init>(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->I:Lms/i;

    .line 14
    .line 15
    new-instance v0, Lci/u;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lci/u;-><init>(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->J:Lms/i;

    .line 25
    .line 26
    new-instance v0, Lci/v;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lci/v;-><init>(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->L:Lms/i;

    .line 36
    .line 37
    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->P:I

    .line 39
    .line 40
    return-void
.end method

.method public static synthetic A0(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->h1(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B0(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;)Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->c1(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;)Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C0(Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->f1(Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic D0(Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;ILcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->e1(Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;ILcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/util/List;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic E0(Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;Lcom/startshorts/androidplayer/viewmodel/subs/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->d1(Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;Lcom/startshorts/androidplayer/viewmodel/subs/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic F0(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->N0()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic G0(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->G:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic H0(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->N:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic I0(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->O:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic J0(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->N:J

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic K0(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->O:J

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic L0(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->q1(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final M0()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->N0()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/billing/a$c;

    .line 6
    .line 7
    const-string v2, "subs"

    .line 8
    .line 9
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/viewmodel/billing/a$c;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->W(Lcom/startshorts/androidplayer/viewmodel/billing/a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final N0()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->L:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final O0()Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->J:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final P0()Landroidx/lifecycle/ViewModelProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->I:Lms/i;

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

.method private final Q0(ILjava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    sget v0, Lcom/startshorts/androidplayer/R$string;->subscription_detail_activity_subs_success:I

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    sget v0, Lcom/startshorts/androidplayer/R$string;->subscription_detail_activity_subs_update_success:I

    .line 8
    .line 9
    :goto_0
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->x(I)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->O0()Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v8, Lcom/startshorts/androidplayer/viewmodel/subs/a$b;

    .line 17
    .line 18
    const-string v2, "subscribe"

    .line 19
    .line 20
    iget-object v6, p0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->G:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 21
    .line 22
    move-object v1, v8

    .line 23
    move-object v3, p2

    .line 24
    move-object v4, p3

    .line 25
    move-object v5, p4

    .line 26
    move v7, p1

    .line 27
    invoke-direct/range {v1 .. v7}, Lcom/startshorts/androidplayer/viewmodel/subs/a$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v8}, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->N(Lcom/startshorts/androidplayer/viewmodel/subs/a;)V

    .line 31
    .line 32
    .line 33
    sget-object p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->i1()Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-eqz p2, :cond_1

    .line 40
    .line 41
    iget-boolean p2, p0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->H:Z

    .line 42
    .line 43
    if-eqz p2, :cond_1

    .line 44
    .line 45
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->G:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 46
    .line 47
    if-eqz p2, :cond_1

    .line 48
    .line 49
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    new-instance p4, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;

    .line 54
    .line 55
    filled-new-array {p2}, [Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    const/16 v6, 0x18

    .line 64
    .line 65
    const/4 v7, 0x0

    .line 66
    const/4 v1, 0x4

    .line 67
    const/4 v3, 0x1

    .line 68
    const/4 v4, 0x0

    .line 69
    const/4 v5, 0x0

    .line 70
    move-object v0, p4

    .line 71
    invoke-direct/range {v0 .. v7}, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;-><init>(ILjava/util/List;ZZLcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3, p4}, Lau/c;->l(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->z0()Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_2

    .line 82
    .line 83
    sget-object p1, Lae/a;->a:Lae/a;

    .line 84
    .line 85
    invoke-virtual {p1}, Lae/a;->f()Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-nez p1, :cond_2

    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_2
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->m1()V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method private final R0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->O0()Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/subs/a$a;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/viewmodel/subs/a$a;-><init>(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->N(Lcom/startshorts/androidplayer/viewmodel/subs/a;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private final S0(Lcom/startshorts/androidplayer/viewmodel/subs/b$d;)V
    .locals 19

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/viewmodel/subs/b$d;->c()Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;->getSubscriptionReplacementMode()Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sget-object v2, Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;->NULL:Lcom/shorttv/aar/billing/core/SubscriptionUpdateMode;

    .line 12
    .line 13
    if-ne v1, v2, :cond_1

    .line 14
    .line 15
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->N0()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 16
    .line 17
    .line 18
    move-result-object v14

    .line 19
    new-instance v13, Lcom/startshorts/androidplayer/viewmodel/billing/a$j;

    .line 20
    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/viewmodel/subs/b$d;->a()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-object v4, v15, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->G:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 26
    .line 27
    const/16 v16, 0xff0

    .line 28
    .line 29
    const/16 v17, 0x0

    .line 30
    .line 31
    const-string v1, "subscribe"

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    const/4 v6, 0x0

    .line 35
    const/4 v7, 0x0

    .line 36
    const/4 v8, 0x0

    .line 37
    const/4 v9, 0x0

    .line 38
    const/4 v10, 0x0

    .line 39
    const/4 v11, 0x0

    .line 40
    const/4 v12, 0x0

    .line 41
    move-object v0, v13

    .line 42
    move-object/from16 v2, p0

    .line 43
    .line 44
    move-object/from16 v18, v13

    .line 45
    .line 46
    move/from16 v13, v16

    .line 47
    .line 48
    move-object v15, v14

    .line 49
    move-object/from16 v14, v17

    .line 50
    .line 51
    invoke-direct/range {v0 .. v14}, Lcom/startshorts/androidplayer/viewmodel/billing/a$j;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;ILzc/k;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 52
    .line 53
    .line 54
    move-object/from16 v0, v18

    .line 55
    .line 56
    invoke-virtual {v15, v0}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->W(Lcom/startshorts/androidplayer/viewmodel/billing/a;)V

    .line 57
    .line 58
    .line 59
    :cond_0
    move-object/from16 v7, p0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/viewmodel/subs/b$d;->b()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    if-eqz v2, :cond_0

    .line 67
    .line 68
    new-instance v6, Lgi/e;

    .line 69
    .line 70
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/viewmodel/subs/b$d;->a()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/viewmodel/subs/b$d;->c()Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    new-instance v5, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$b;

    .line 79
    .line 80
    move-object/from16 v7, p0

    .line 81
    .line 82
    move-object/from16 v1, p1

    .line 83
    .line 84
    invoke-direct {v5, v0, v7, v1}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$b;-><init>(Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;Lcom/startshorts/androidplayer/viewmodel/subs/b$d;)V

    .line 85
    .line 86
    .line 87
    move-object v0, v6

    .line 88
    move-object/from16 v1, p0

    .line 89
    .line 90
    invoke-direct/range {v0 .. v5}, Lgi/e;-><init>(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsUpdateMode;Lgi/e$b;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v6}, Lfi/a;->show()V

    .line 94
    .line 95
    .line 96
    :goto_0
    return-void
.end method

.method private final T0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->M:Lhi/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->M:Lhi/b;

    .line 10
    .line 11
    return-void
.end method

.method private final U0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivitySubsDetailBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivitySubsDetailBinding;->j:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$c;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$c;-><init>(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivitySubsDetailBinding;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivitySubsDetailBinding;->s:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 24
    .line 25
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$d;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$d;-><init>(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private final V0()V
    .locals 2

    .line 1
    sget-object v0, Luh/i0;->a:Luh/i0;

    .line 2
    .line 3
    invoke-virtual {v0}, Luh/i0;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget v0, Lcom/startshorts/androidplayer/R$string;->subscription_detail_activity_pro_desc_content_2:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget v0, Lcom/startshorts/androidplayer/R$string;->subscription_detail_activity_pro_desc_content:I

    .line 13
    .line 14
    :goto_0
    const-string v1, "Google Play"

    .line 15
    .line 16
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "getString(...)"

    .line 25
    .line 26
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/startshorts/androidplayer/databinding/ActivitySubsDetailBinding;

    .line 34
    .line 35
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ActivitySubsDetailBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private final W0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivitySubsDetailBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivitySubsDetailBinding;->h:Landroid/widget/ImageView;

    .line 8
    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$e;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$e;-><init>(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final X0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivitySubsDetailBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivitySubsDetailBinding;->m:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$f;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$f;-><init>(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final Y0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivitySubsDetailBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivitySubsDetailBinding;->o:Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;

    .line 8
    .line 9
    sget v1, Lcom/startshorts/androidplayer/R$color;->color_subscription_activity_title_start:I

    .line 10
    .line 11
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    sget v2, Lcom/startshorts/androidplayer/R$color;->color_subscription_activity_title_end:I

    .line 16
    .line 17
    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;->setColor(II)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private final Z0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivitySubsDetailBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivitySubsDetailBinding;->q:Landroid/view/View;

    .line 8
    .line 9
    const-string v1, "toolbarView"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object v1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->J()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {v0, v1}, Ljk/b0;->g(Landroid/view/View;I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private static final a1(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->P0()Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Lci/w;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Lci/w;-><init>(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;)V

    .line 20
    .line 21
    .line 22
    new-instance v3, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$g;

    .line 23
    .line 24
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$g;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method private static final b1(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;Lcom/startshorts/androidplayer/viewmodel/billing/b;)Lkotlin/Unit;
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$q;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->k1()V

    .line 6
    .line 7
    .line 8
    goto/16 :goto_0

    .line 9
    .line 10
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$m;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_3

    .line 14
    .line 15
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$m;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$m;->a()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/util/Collection;

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    :cond_1
    move v1, v2

    .line 33
    :cond_2
    xor-int/lit8 v0, v1, 0x1

    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->K:Z

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivitySubsDetailBinding;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivitySubsDetailBinding;->n:Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView;->a0()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_d

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$m;->a()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->R0(Ljava/util/List;)V

    .line 56
    .line 57
    .line 58
    goto/16 :goto_0

    .line 59
    .line 60
    :cond_3
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$u;

    .line 61
    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    sget p1, Lcom/startshorts/androidplayer/R$string;->common_user_canceled:I

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->x(I)V

    .line 67
    .line 68
    .line 69
    goto/16 :goto_0

    .line 70
    .line 71
    :cond_4
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$l;

    .line 72
    .line 73
    if-eqz v0, :cond_5

    .line 74
    .line 75
    sget p1, Lcom/startshorts/androidplayer/R$string;->common_google_pay_not_support:I

    .line 76
    .line 77
    sget-object v0, Lae/a;->a:Lae/a;

    .line 78
    .line 79
    invoke-virtual {v0}, Lae/a;->a()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->y(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    goto/16 :goto_0

    .line 95
    .line 96
    :cond_5
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$f;

    .line 97
    .line 98
    if-eqz v0, :cond_6

    .line 99
    .line 100
    const-string p1, "Item already owned"

    .line 101
    .line 102
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->y(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    sget-object p0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 106
    .line 107
    const/4 p1, 0x3

    .line 108
    const/4 v0, 0x0

    .line 109
    invoke-static {p0, v1, v0, p1, v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->c1(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    goto/16 :goto_0

    .line 113
    .line 114
    :cond_6
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$e;

    .line 115
    .line 116
    if-eqz v0, :cond_7

    .line 117
    .line 118
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$e;

    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$e;->a()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$e;->b()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$e;->c()Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    const/4 v2, 0x2

    .line 133
    invoke-direct {p0, v2, v0, v1, p1}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->Q0(ILjava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V

    .line 134
    .line 135
    .line 136
    goto/16 :goto_0

    .line 137
    .line 138
    :cond_7
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$d;

    .line 139
    .line 140
    if-eqz v0, :cond_8

    .line 141
    .line 142
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->n1()V

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_8
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$t;

    .line 147
    .line 148
    if-eqz v0, :cond_9

    .line 149
    .line 150
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$t;

    .line 151
    .line 152
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$t;->d()I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$t;->a()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$t;->b()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$t;->c()Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->Q0(ILjava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V

    .line 169
    .line 170
    .line 171
    goto :goto_0

    .line 172
    :cond_9
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$s;

    .line 173
    .line 174
    if-eqz v0, :cond_a

    .line 175
    .line 176
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->n1()V

    .line 177
    .line 178
    .line 179
    goto :goto_0

    .line 180
    :cond_a
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$h;

    .line 181
    .line 182
    if-eqz v0, :cond_b

    .line 183
    .line 184
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->T0()V

    .line 185
    .line 186
    .line 187
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$h;

    .line 188
    .line 189
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$h;->a()Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;->hasAcknowledged()Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-eqz v0, :cond_d

    .line 198
    .line 199
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$h;->a()Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;->showTip()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$h;->a()Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;->containsSubs()Z

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    if-eqz p1, :cond_d

    .line 215
    .line 216
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->m1()V

    .line 217
    .line 218
    .line 219
    goto :goto_0

    .line 220
    :cond_b
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$j;

    .line 221
    .line 222
    if-eqz v0, :cond_c

    .line 223
    .line 224
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->T0()V

    .line 225
    .line 226
    .line 227
    sget p1, Lcom/startshorts/androidplayer/R$string;->top_up_fragment_not_find_lost_order_tip:I

    .line 228
    .line 229
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->x(I)V

    .line 230
    .line 231
    .line 232
    goto :goto_0

    .line 233
    :cond_c
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$k;

    .line 234
    .line 235
    if-eqz v0, :cond_d

    .line 236
    .line 237
    new-instance v0, Lgi/f;

    .line 238
    .line 239
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$k;

    .line 240
    .line 241
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$k;->a()Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    invoke-direct {v0, p0, p1}, Lgi/f;-><init>(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0}, Lfi/a;->show()V

    .line 249
    .line 250
    .line 251
    :cond_d
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 252
    .line 253
    return-object p0
.end method

.method private static final c1(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;)Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->P0()Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->H()Landroidx/lifecycle/MutableLiveData;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Lci/x;

    .line 18
    .line 19
    invoke-direct {v2, v0, p0}, Lci/x;-><init>(Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;)V

    .line 20
    .line 21
    .line 22
    new-instance v3, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$g;

    .line 23
    .line 24
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$g;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method private static final d1(Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;Lcom/startshorts/androidplayer/viewmodel/subs/b;)Lkotlin/Unit;
    .locals 18

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
    instance-of v3, v2, Lcom/startshorts/androidplayer/viewmodel/subs/b$b;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v3, :cond_1

    .line 11
    .line 12
    sget-object v3, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->a:Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;

    .line 13
    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->G()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    new-instance v6, Lci/y;

    .line 19
    .line 20
    invoke-direct {v6, v0, v1}, Lci/y;-><init>(Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, v4, v5, v6}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->u(ZLjava/util/List;Lat/n;)V

    .line 24
    .line 25
    .line 26
    move-object v0, v2

    .line 27
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/subs/b$b;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/subs/b$b;->a()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->T()V

    .line 36
    .line 37
    .line 38
    goto/16 :goto_6

    .line 39
    .line 40
    :cond_0
    invoke-direct/range {p1 .. p1}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->M0()V

    .line 41
    .line 42
    .line 43
    goto/16 :goto_6

    .line 44
    .line 45
    :cond_1
    instance-of v3, v2, Lcom/startshorts/androidplayer/viewmodel/subs/b$c;

    .line 46
    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    move-object v0, v2

    .line 50
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/subs/b$c;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/subs/b$c;->a()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-direct {v1, v0}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->j1(Ljava/util/List;)V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_6

    .line 60
    .line 61
    :cond_2
    instance-of v3, v2, Lcom/startshorts/androidplayer/viewmodel/subs/b$f;

    .line 62
    .line 63
    const/4 v5, 0x1

    .line 64
    if-eqz v3, :cond_5

    .line 65
    .line 66
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivitySubsDetailBinding;

    .line 71
    .line 72
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivitySubsDetailBinding;->k:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 73
    .line 74
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    sget v3, Lcom/startshorts/androidplayer/R$string;->subscription_detail_activity_privilege_title:I

    .line 78
    .line 79
    check-cast v2, Lcom/startshorts/androidplayer/viewmodel/subs/b$f;

    .line 80
    .line 81
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/viewmodel/subs/b$f;->a()Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    if-eqz v6, :cond_3

    .line 86
    .line 87
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    goto :goto_0

    .line 92
    :cond_3
    move v6, v4

    .line 93
    :goto_0
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    invoke-virtual {v1, v3, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/viewmodel/subs/b$f;->a()Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    if-eqz v0, :cond_4

    .line 113
    .line 114
    check-cast v0, Ljava/util/Collection;

    .line 115
    .line 116
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->g1(Ljava/util/Collection;)Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    goto :goto_1

    .line 121
    :cond_4
    const/4 v0, 0x0

    .line 122
    :goto_1
    invoke-virtual {v1, v5, v0}, Lcom/startshorts/androidplayer/ui/activity/base/ListActivity;->t0(ZLjava/util/List;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity;->e0()Landroidx/recyclerview/widget/RecyclerView;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    if-eqz v0, :cond_11

    .line 130
    .line 131
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 132
    .line 133
    .line 134
    goto/16 :goto_6

    .line 135
    .line 136
    :cond_5
    instance-of v3, v2, Lcom/startshorts/androidplayer/viewmodel/subs/b$g;

    .line 137
    .line 138
    if-eqz v3, :cond_e

    .line 139
    .line 140
    check-cast v2, Lcom/startshorts/androidplayer/viewmodel/subs/b$g;

    .line 141
    .line 142
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/viewmodel/subs/b$g;->b()Ljava/util/List;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    check-cast v3, Ljava/util/Collection;

    .line 147
    .line 148
    const/4 v5, -0x1

    .line 149
    if-eqz v3, :cond_8

    .line 150
    .line 151
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    if-eqz v3, :cond_6

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_6
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/viewmodel/subs/b$g;->b()Ljava/util/List;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    iget v6, v1, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->P:I

    .line 167
    .line 168
    if-le v3, v6, :cond_8

    .line 169
    .line 170
    if-eq v6, v5, :cond_8

    .line 171
    .line 172
    :cond_7
    move v4, v6

    .line 173
    goto :goto_5

    .line 174
    :cond_8
    :goto_2
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/viewmodel/subs/b$g;->b()Ljava/util/List;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    check-cast v3, Ljava/util/Collection;

    .line 179
    .line 180
    if-eqz v3, :cond_d

    .line 181
    .line 182
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    if-eqz v3, :cond_9

    .line 187
    .line 188
    goto :goto_5

    .line 189
    :cond_9
    iget-object v3, v1, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->F:Ljava/lang/String;

    .line 190
    .line 191
    if-eqz v3, :cond_d

    .line 192
    .line 193
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 194
    .line 195
    .line 196
    move-result v3

    .line 197
    if-nez v3, :cond_a

    .line 198
    .line 199
    goto :goto_5

    .line 200
    :cond_a
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/viewmodel/subs/b$g;->b()Ljava/util/List;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    move v6, v4

    .line 209
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 210
    .line 211
    .line 212
    move-result v7

    .line 213
    if-eqz v7, :cond_c

    .line 214
    .line 215
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v7

    .line 219
    check-cast v7, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 220
    .line 221
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getProductId()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v7

    .line 225
    iget-object v8, v1, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->F:Ljava/lang/String;

    .line 226
    .line 227
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v7

    .line 231
    if-eqz v7, :cond_b

    .line 232
    .line 233
    goto :goto_4

    .line 234
    :cond_b
    add-int/lit8 v6, v6, 0x1

    .line 235
    .line 236
    goto :goto_3

    .line 237
    :cond_c
    move v6, v5

    .line 238
    :goto_4
    if-ne v6, v5, :cond_7

    .line 239
    .line 240
    :cond_d
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    check-cast v3, Lcom/startshorts/androidplayer/databinding/ActivitySubsDetailBinding;

    .line 245
    .line 246
    iget-object v7, v3, Lcom/startshorts/androidplayer/databinding/ActivitySubsDetailBinding;->n:Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView;

    .line 247
    .line 248
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/viewmodel/subs/b$g;->b()Ljava/util/List;

    .line 249
    .line 250
    .line 251
    move-result-object v11

    .line 252
    new-instance v13, Lci/z;

    .line 253
    .line 254
    invoke-direct {v13, v0, v1}, Lci/z;-><init>(Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;)V

    .line 255
    .line 256
    .line 257
    new-instance v14, Lci/a0;

    .line 258
    .line 259
    invoke-direct {v14, v1, v0}, Lci/a0;-><init>(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;)V

    .line 260
    .line 261
    .line 262
    new-instance v15, Lci/b0;

    .line 263
    .line 264
    invoke-direct {v15, v1}, Lci/b0;-><init>(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;)V

    .line 265
    .line 266
    .line 267
    const/16 v16, 0x11

    .line 268
    .line 269
    const/16 v17, 0x0

    .line 270
    .line 271
    const/4 v8, 0x0

    .line 272
    const-string v9, "subscribe"

    .line 273
    .line 274
    const/4 v12, 0x0

    .line 275
    move v10, v4

    .line 276
    invoke-static/range {v7 .. v17}, Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView;->setSubsSkus$default(Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    new-instance v2, Lcom/startshorts/androidplayer/viewmodel/subs/a$d;

    .line 280
    .line 281
    invoke-direct {v2, v1, v4}, Lcom/startshorts/androidplayer/viewmodel/subs/a$d;-><init>(Landroid/content/Context;I)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->N(Lcom/startshorts/androidplayer/viewmodel/subs/a;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->P()V

    .line 288
    .line 289
    .line 290
    goto :goto_6

    .line 291
    :cond_e
    instance-of v0, v2, Lcom/startshorts/androidplayer/viewmodel/subs/b$a;

    .line 292
    .line 293
    if-eqz v0, :cond_10

    .line 294
    .line 295
    move-object v0, v2

    .line 296
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/subs/b$a;

    .line 297
    .line 298
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/subs/b$a;->a()Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getState()I

    .line 303
    .line 304
    .line 305
    move-result v2

    .line 306
    if-ne v2, v5, :cond_f

    .line 307
    .line 308
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->V()V

    .line 309
    .line 310
    .line 311
    goto :goto_6

    .line 312
    :cond_f
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/subs/b$a;->a()Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getMsg()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->W(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    goto :goto_6

    .line 324
    :cond_10
    instance-of v0, v2, Lcom/startshorts/androidplayer/viewmodel/subs/b$d;

    .line 325
    .line 326
    if-eqz v0, :cond_11

    .line 327
    .line 328
    move-object v0, v2

    .line 329
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/subs/b$d;

    .line 330
    .line 331
    invoke-direct {v1, v0}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->S0(Lcom/startshorts/androidplayer/viewmodel/subs/b$d;)V

    .line 332
    .line 333
    .line 334
    :cond_11
    :goto_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 335
    .line 336
    return-object v0
.end method

.method private static final e1(Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;ILcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    const-string p3, "replacedList"

    .line 2
    .line 3
    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p4}, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->S(Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    const/4 p0, -0x1

    .line 10
    if-le p2, p0, :cond_0

    .line 11
    .line 12
    iput p2, p1, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->P:I

    .line 13
    .line 14
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method

.method private static final f1(Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;I)Lkotlin/Unit;
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/subs/a$d;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/subs/a$d;-><init>(Landroid/content/Context;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->N(Lcom/startshorts/androidplayer/viewmodel/subs/a;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method private static final g1(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "clickedSku"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->K:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/subs/a$g;

    .line 11
    .line 12
    invoke-direct {v0, p0, p2, p3}, Lcom/startshorts/androidplayer/viewmodel/subs/a$g;-><init>(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->N(Lcom/startshorts/androidplayer/viewmodel/subs/a;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Lgi/a;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Lgi/a;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lfi/a;->show()V

    .line 25
    .line 26
    .line 27
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 28
    .line 29
    return-object p0
.end method

.method private static final h1(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;)Lkotlin/Unit;
    .locals 2

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->P:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->m1()V

    .line 7
    .line 8
    .line 9
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method private static final i1(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;)Landroidx/lifecycle/ViewModelProvider;
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

.method private final j1(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzc/g;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->N0()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/billing/a$h;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/viewmodel/billing/a$h;-><init>(Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->W(Lcom/startshorts/androidplayer/viewmodel/billing/a;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private final k1()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->O0()Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/startshorts/androidplayer/viewmodel/subs/a$e;->a:Lcom/startshorts/androidplayer/viewmodel/subs/a$e;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->N(Lcom/startshorts/androidplayer/viewmodel/subs/a;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final l1()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->O0()Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/subs/a$f;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->G:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 8
    .line 9
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/viewmodel/subs/a$f;-><init>(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->N(Lcom/startshorts/androidplayer/viewmodel/subs/a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final m1()V
    .locals 12

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->O0()Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->F()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const-string v0, "reloadSubsSkuList"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->F:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivitySubsDetailBinding;

    .line 24
    .line 25
    iget-object v1, v0, Lcom/startshorts/androidplayer/databinding/ActivitySubsDetailBinding;->n:Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView;

    .line 26
    .line 27
    const/16 v10, 0xf5

    .line 28
    .line 29
    const/4 v11, 0x0

    .line 30
    const/4 v2, 0x0

    .line 31
    const-string v3, "subscribe"

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    const/4 v5, 0x0

    .line 35
    const/4 v6, 0x0

    .line 36
    const/4 v7, 0x0

    .line 37
    const/4 v8, 0x0

    .line 38
    const/4 v9, 0x0

    .line 39
    invoke-static/range {v1 .. v11}, Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView;->setSubsSkus$default(Lcom/startshorts/androidplayer/ui/view/subs/SubsTypeView;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivitySubsDetailBinding;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivitySubsDetailBinding;->k:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 49
    .line 50
    const/4 v1, 0x4

    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity;->e0()Landroidx/recyclerview/widget/RecyclerView;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->U()V

    .line 64
    .line 65
    .line 66
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->l1()V

    .line 67
    .line 68
    .line 69
    :cond_1
    return-void
.end method

.method private final n1()V
    .locals 2

    .line 1
    new-instance v0, Lgi/d;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lgi/d;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$h;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$h;-><init>(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lgi/d;->x(Lgi/d$b;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lfi/a;->show()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final o1()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->T0()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lhi/b;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lhi/b;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Lhi/b;->setCancelable(Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lfi/a;->show()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->M:Lhi/b;

    .line 17
    .line 18
    return-void
.end method

.method private final p1()V
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->a:Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;

    .line 2
    .line 3
    const-string v1, "subscribe"

    .line 4
    .line 5
    invoke-virtual {v0, p0, v1}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->h(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final q1(Ljava/lang/String;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    new-instance v2, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "scene"

    .line 9
    .line 10
    invoke-virtual {v2, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    const/4 v5, 0x4

    .line 16
    const/4 v6, 0x0

    .line 17
    const-string v1, "restore_click"

    .line 18
    .line 19
    const-wide/16 v3, 0x0

    .line 20
    .line 21
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->o1()V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->N0()Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/billing/a$g;

    .line 32
    .line 33
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/viewmodel/billing/a$g;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->W(Lcom/startshorts/androidplayer/viewmodel/billing/a;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method static synthetic r1(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const-string p1, "subscribe"

    .line 6
    .line 7
    :cond_0
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->q1(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static synthetic w0(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->g1(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic x0(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;Lcom/startshorts/androidplayer/viewmodel/billing/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->b1(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;Lcom/startshorts/androidplayer/viewmodel/billing/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic y0(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;)Landroidx/lifecycle/ViewModelProvider;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->i1(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;)Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic z0(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->a1(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public S()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->O0()Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/subs/SubsViewModel;->F()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->l1()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->M0()V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public g0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 2
    .line 3
    sget v1, Lcom/startshorts/androidplayer/R$layout;->item_subs_privilege:I

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;-><init>(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity;->i0(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x2

    .line 16
    invoke-direct {v0, p0, v3, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity;->k0(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 20
    .line 21
    .line 22
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/activity/base/ListActivity;->g0()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public o()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->activity_subs_detail:I

    .line 2
    .line 3
    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Led/a;->a:Led/a;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, p0, v0}, Led/a;->b(Landroid/app/Activity;Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, "from"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->D:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v1, "second_from"

    .line 27
    .line 28
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->E:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string v2, "subs_sku_product_id"

    .line 39
    .line 40
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->F:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string v2, "episode"

    .line 51
    .line 52
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-eqz p1, :cond_0

    .line 57
    .line 58
    const-class v2, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 59
    .line 60
    invoke-static {p1, v2}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    const/4 p1, 0x0

    .line 68
    :goto_0
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->G:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const-string v2, "unlock_episode"

    .line 75
    .line 76
    const/4 v3, 0x0

    .line 77
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->H:Z

    .line 82
    .line 83
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->Z0()V

    .line 84
    .line 85
    .line 86
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->W0()V

    .line 87
    .line 88
    .line 89
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->Y0()V

    .line 90
    .line 91
    .line 92
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->V0()V

    .line 93
    .line 94
    .line 95
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->U0()V

    .line 96
    .line 97
    .line 98
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->X0()V

    .line 99
    .line 100
    .line 101
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->p1()V

    .line 102
    .line 103
    .line 104
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->l1()V

    .line 105
    .line 106
    .line 107
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 108
    .line 109
    new-instance v4, Landroid/os/Bundle;

    .line 110
    .line 111
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->D:Ljava/lang/String;

    .line 115
    .line 116
    invoke-virtual {v4, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->E:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {v4, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 125
    .line 126
    const/4 v7, 0x4

    .line 127
    const/4 v8, 0x0

    .line 128
    const-string v3, "subscribe_show"

    .line 129
    .line 130
    const-wide/16 v5, 0x0

    .line 131
    .line 132
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    sget-object p1, Lcom/startshorts/androidplayer/manager/account/AccountManager;->a:Lcom/startshorts/androidplayer/manager/account/AccountManager;

    .line 136
    .line 137
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/account/AccountManager;->v()V

    .line 138
    .line 139
    .line 140
    return-void
.end method

.method public q()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public r()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "SubsDetailActivity"

    .line 2
    .line 3
    return-object v0
.end method

.method public final receiveAcknowledgePurchaseResult(Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "result"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "receive AcknowledgePurchaseResult -> "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;->containsSubs()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->m1()V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method
