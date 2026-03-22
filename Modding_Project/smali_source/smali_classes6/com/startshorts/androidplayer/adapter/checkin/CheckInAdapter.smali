.class public final Lcom/startshorts/androidplayer/adapter/checkin/CheckInAdapter;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;
.source "CheckInAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/adapter/checkin/CheckInAdapter$a;,
        Lcom/startshorts/androidplayer/adapter/checkin/CheckInAdapter$b;,
        Lcom/startshorts/androidplayer/adapter/checkin/CheckInAdapter$c;,
        Lcom/startshorts/androidplayer/adapter/checkin/CheckInAdapter$d;,
        Lcom/startshorts/androidplayer/adapter/checkin/CheckInAdapter$e;,
        Lcom/startshorts/androidplayer/adapter/checkin/CheckInAdapter$f;
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
        "SMAP\nCheckInAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CheckInAdapter.kt\ncom/startshorts/androidplayer/adapter/checkin/CheckInAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,110:1\n360#2,7:111\n360#2,7:118\n*S KotlinDebug\n*F\n+ 1 CheckInAdapter.kt\ncom/startshorts/androidplayer/adapter/checkin/CheckInAdapter\n*L\n35#1:111,7\n47#1:118,7\n*E\n"
    }
.end annotation


# static fields
.field public static final q:Lcom/startshorts/androidplayer/adapter/checkin/CheckInAdapter$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final o:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/checkin/CheckInAdapter$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/adapter/checkin/CheckInAdapter$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/adapter/checkin/CheckInAdapter;->q:Lcom/startshorts/androidplayer/adapter/checkin/CheckInAdapter$a;

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
    sget-object v0, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->a:Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->l()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/startshorts/androidplayer/adapter/checkin/CheckInAdapter;->o:Ljava/lang/String;

    .line 15
    .line 16
    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/startshorts/androidplayer/adapter/checkin/CheckInAdapter;->p:I

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    check-cast v1, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;

    .line 7
    .line 8
    const/4 v2, 0x5

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return v2

    .line 12
    :cond_0
    iget v3, p0, Lcom/startshorts/androidplayer/adapter/checkin/CheckInAdapter;->p:I

    .line 13
    .line 14
    const/4 v4, -0x1

    .line 15
    if-ne v3, v4, :cond_3

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->m()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    monitor-enter v3

    .line 22
    :try_start_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->m()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    const/4 v6, 0x0

    .line 31
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    if-eqz v7, :cond_2

    .line 36
    .line 37
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    check-cast v7, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;

    .line 42
    .line 43
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;->getDay()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    iget-object v8, p0, Lcom/startshorts/androidplayer/adapter/checkin/CheckInAdapter;->o:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    if-eqz v7, :cond_1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    add-int/2addr v6, v0

    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    goto :goto_2

    .line 60
    :cond_2
    move v6, v4

    .line 61
    :goto_1
    iput v6, p0, Lcom/startshorts/androidplayer/adapter/checkin/CheckInAdapter;->p:I

    .line 62
    .line 63
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    monitor-exit v3

    .line 66
    goto :goto_3

    .line 67
    :goto_2
    monitor-exit v3

    .line 68
    throw p1

    .line 69
    :cond_3
    :goto_3
    iget v3, p0, Lcom/startshorts/androidplayer/adapter/checkin/CheckInAdapter;->p:I

    .line 70
    .line 71
    if-ne v3, v4, :cond_5

    .line 72
    .line 73
    :cond_4
    move v0, v2

    .line 74
    goto :goto_4

    .line 75
    :cond_5
    if-ne v3, p1, :cond_7

    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;->isSign()Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_6

    .line 82
    .line 83
    const/4 v0, 0x3

    .line 84
    goto :goto_4

    .line 85
    :cond_6
    const/4 v0, 0x4

    .line 86
    goto :goto_4

    .line 87
    :cond_7
    if-ge p1, v3, :cond_4

    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;->isSign()Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_8

    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_8
    const/4 v0, 0x2

    .line 97
    :goto_4
    return v0
.end method

.method public q()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "CheckInAdapter"

    .line 2
    .line 3
    return-object v0
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
    const/4 p3, 0x1

    .line 7
    if-eq p2, p3, :cond_3

    .line 8
    .line 9
    const/4 p3, 0x2

    .line 10
    if-eq p2, p3, :cond_2

    .line 11
    .line 12
    const/4 p3, 0x3

    .line 13
    if-eq p2, p3, :cond_1

    .line 14
    .line 15
    const/4 p3, 0x4

    .line 16
    if-eq p2, p3, :cond_0

    .line 17
    .line 18
    new-instance p2, Lcom/startshorts/androidplayer/adapter/checkin/CheckInAdapter$b;

    .line 19
    .line 20
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_check_in_future_not_check_in:I

    .line 21
    .line 22
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemCheckInFutureNotCheckInBinding;

    .line 27
    .line 28
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/checkin/CheckInAdapter$b;-><init>(Lcom/startshorts/androidplayer/adapter/checkin/CheckInAdapter;Lcom/startshorts/androidplayer/databinding/ItemCheckInFutureNotCheckInBinding;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance p2, Lcom/startshorts/androidplayer/adapter/checkin/CheckInAdapter$d;

    .line 33
    .line 34
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_check_in_now_not_check_in:I

    .line 35
    .line 36
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemCheckInNowNotCheckInBinding;

    .line 41
    .line 42
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/checkin/CheckInAdapter$d;-><init>(Lcom/startshorts/androidplayer/adapter/checkin/CheckInAdapter;Lcom/startshorts/androidplayer/databinding/ItemCheckInNowNotCheckInBinding;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    new-instance p2, Lcom/startshorts/androidplayer/adapter/checkin/CheckInAdapter$c;

    .line 47
    .line 48
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_check_in_now_check_in:I

    .line 49
    .line 50
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemCheckInNowCheckInBinding;

    .line 55
    .line 56
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/checkin/CheckInAdapter$c;-><init>(Lcom/startshorts/androidplayer/adapter/checkin/CheckInAdapter;Lcom/startshorts/androidplayer/databinding/ItemCheckInNowCheckInBinding;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    new-instance p2, Lcom/startshorts/androidplayer/adapter/checkin/CheckInAdapter$f;

    .line 61
    .line 62
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_check_in_passed_not_check_in:I

    .line 63
    .line 64
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemCheckInPassedNotCheckInBinding;

    .line 69
    .line 70
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/checkin/CheckInAdapter$f;-><init>(Lcom/startshorts/androidplayer/adapter/checkin/CheckInAdapter;Lcom/startshorts/androidplayer/databinding/ItemCheckInPassedNotCheckInBinding;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    new-instance p2, Lcom/startshorts/androidplayer/adapter/checkin/CheckInAdapter$e;

    .line 75
    .line 76
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_check_in_passed_check_in:I

    .line 77
    .line 78
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemCheckInPassedCheckInBinding;

    .line 83
    .line 84
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/checkin/CheckInAdapter$e;-><init>(Lcom/startshorts/androidplayer/adapter/checkin/CheckInAdapter;Lcom/startshorts/androidplayer/databinding/ItemCheckInPassedCheckInBinding;)V

    .line 85
    .line 86
    .line 87
    :goto_0
    return-object p2
.end method
