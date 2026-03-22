.class public final Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;
.source "HomeCheckInAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter$a;,
        Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter$b;,
        Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHomeCheckInAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HomeCheckInAdapter.kt\ncom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,175:1\n1663#2,8:176\n1062#2:184\n360#2,7:185\n*S KotlinDebug\n*F\n+ 1 HomeCheckInAdapter.kt\ncom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter\n*L\n140#1:176,8\n140#1:184\n148#1:185,7\n*E\n"
    }
.end annotation


# static fields
.field public static final s:Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private o:I

.field private p:Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private q:Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final r:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;->s:Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter$b;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;->o:I

    .line 10
    .line 11
    new-instance v0, Lld/a;

    .line 12
    .line 13
    invoke-direct {v0}, Lld/a;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;->r:Lms/i;

    .line 21
    .line 22
    return-void
.end method

.method public static synthetic E()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;->P()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic F(Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;->L(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic G(Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;->o:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic H(Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;Landroid/view/View;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;->R(Landroid/view/View;F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic I(Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;Landroid/widget/ImageView;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;->S(Landroid/widget/ImageView;ZI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic J(Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;->T(Landroid/view/View;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic K(Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;Landroid/widget/TextView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;->U(Landroid/widget/TextView;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final L(I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;->o:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    if-ge p1, v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_1
    const/4 p1, 0x2

    .line 12
    :goto_0
    return p1
.end method

.method private final M()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;->r:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method

.method private final N()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->m()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Iterable;

    .line 6
    .line 7
    new-instance v1, Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v2, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    move-object v4, v3

    .line 32
    check-cast v4, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;

    .line 33
    .line 34
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;->getBonus()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_0

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter$d;

    .line 53
    .line 54
    invoke-direct {v0}, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter$d;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt;->U0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const/4 v1, 0x0

    .line 62
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->t0(Ljava/util/List;I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;

    .line 67
    .line 68
    iput-object v1, p0, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;->p:Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;

    .line 69
    .line 70
    const/4 v1, 0x1

    .line 71
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->t0(Ljava/util/List;I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;

    .line 76
    .line 77
    iput-object v0, p0, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;->q:Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;

    .line 78
    .line 79
    return-void
.end method

.method private final O()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;->o:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_2

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->m()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;

    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;->getDay()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;->M()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    move v1, v2

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    :goto_1
    iput v1, p0, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;->o:I

    .line 47
    .line 48
    :cond_2
    return-void
.end method

.method private static final P()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/AdSignInfoManager;->a:Lcom/startshorts/androidplayer/manager/configure/ad/AdSignInfoManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/ad/AdSignInfoManager;->a()Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->getZoneStr()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    sget-object v1, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 25
    .line 26
    new-instance v2, Ljava/util/Date;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-static {v2}, Ljk/f;->a(Ljava/util/Date;)Ljava/util/Date;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    sget-object v3, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->YEAR_MONTH_DAY:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 36
    .line 37
    invoke-virtual {v1, v2, v0, v3}, Lcom/startshorts/androidplayer/utils/TimeUtil;->h(Ljava/util/Date;Ljava/lang/String;Lcom/startshorts/androidplayer/utils/TimeUtil$Template;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    :goto_1
    sget-object v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->a:Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->l()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :goto_2
    return-object v0
.end method

.method private final Q(Landroid/widget/ImageView;F)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p2}, Ljk/g;->a(F)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 10
    .line 11
    const/high16 p2, 0x41e00000    # 28.0f

    .line 12
    .line 13
    invoke-static {p2}, Ljk/g;->a(F)I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 18
    .line 19
    return-void
.end method

.method private final R(Landroid/view/View;F)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final S(Landroid/widget/ImageView;ZI)V
    .locals 1

    .line 1
    const/high16 v0, 0x41e00000    # 28.0f

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    sget p2, Lcom/startshorts/androidplayer/R$drawable;->icon_signed_pass:I

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1, v0}, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;->Q(Landroid/widget/ImageView;F)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p2, p0, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;->p:Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;

    .line 15
    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;->getDayIndex()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-ne p3, p2, :cond_1

    .line 23
    .line 24
    sget p2, Lcom/startshorts/androidplayer/R$drawable;->ic_checked_in_3bonus:I

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 27
    .line 28
    .line 29
    const/high16 p2, 0x42880000    # 68.0f

    .line 30
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;->Q(Landroid/widget/ImageView;F)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object p2, p0, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;->q:Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;

    .line 36
    .line 37
    if-eqz p2, :cond_2

    .line 38
    .line 39
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;->getDayIndex()I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-ne p3, p2, :cond_2

    .line 44
    .line 45
    sget p2, Lcom/startshorts/androidplayer/R$drawable;->ic_checked_in_2bonus:I

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    .line 49
    .line 50
    const/high16 p2, 0x42400000    # 48.0f

    .line 51
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;->Q(Landroid/widget/ImageView;F)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    sget p2, Lcom/startshorts/androidplayer/R$drawable;->icon_not_sign_pass:I

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 59
    .line 60
    .line 61
    invoke-direct {p0, p1, v0}, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;->Q(Landroid/widget/ImageView;F)V

    .line 62
    .line 63
    .line 64
    :goto_0
    return-void
.end method

.method private final T(Landroid/view/View;Z)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    sget p2, Lcom/startshorts/androidplayer/R$drawable;->bg_check_in_daily_future:I

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget p2, Lcom/startshorts/androidplayer/R$drawable;->bg_check_in_daily_present:I

    .line 7
    .line 8
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private final U(Landroid/widget/TextView;I)V
    .locals 2

    .line 1
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 2
    .line 3
    sget v1, Lcom/startshorts/androidplayer/R$string;->rewards_activity_check_in_day:I

    .line 4
    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {v0, v1, p2}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public C(Ljava/util/List;Z)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;->o:I

    .line 3
    .line 4
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->C(Ljava/util/List;Z)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;->N()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;->O()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;->p:Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;->getDayIndex()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->m()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;->getDayIndex()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-ne v0, p1, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x2

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x1

    .line 28
    :goto_0
    return p1
.end method

.method public x(Landroid/view/ViewGroup;II)Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "II)",
            "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
            "Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;",
            ">.ViewHolder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p3, "parent"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p3, 0x2

    .line 7
    if-ne p2, p3, :cond_0

    .line 8
    .line 9
    new-instance p2, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter$a;

    .line 10
    .line 11
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_home_check_in_day_big:I

    .line 12
    .line 13
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemHomeCheckInDayBigBinding;

    .line 18
    .line 19
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter$a;-><init>(Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;Lcom/startshorts/androidplayer/databinding/ItemHomeCheckInDayBigBinding;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance p2, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter$c;

    .line 24
    .line 25
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_home_check_in_day_normal:I

    .line 26
    .line 27
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemHomeCheckInDayNormalBinding;

    .line 32
    .line 33
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter$c;-><init>(Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;Lcom/startshorts/androidplayer/databinding/ItemHomeCheckInDayNormalBinding;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-object p2
.end method
