.class public final Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$mPropertyObserver$1;
.super Landroidx/databinding/Observable$OnPropertyChangedCallback;
.source "ImmersionActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nImmersionActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$mPropertyObserver$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,6800:1\n1#2:6801\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$mPropertyObserver$1;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/databinding/Observable$OnPropertyChangedCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$mPropertyObserver$1;->e(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lcom/startshorts/androidplayer/manager/immersion/feature/k;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$mPropertyObserver$1;->d(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lcom/startshorts/androidplayer/manager/immersion/feature/k;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$mPropertyObserver$1;->f(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final d(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lcom/startshorts/androidplayer/manager/immersion/feature/k;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->A3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lcom/startshorts/androidplayer/manager/immersion/feature/k;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final e(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->o2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static final f(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->S2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->n2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-static {p0, v0, v1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->R3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Ljava/lang/String;Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method


# virtual methods
.method public onPropertyChanged(Landroidx/databinding/Observable;I)V
    .locals 2

    .line 1
    const/4 p1, 0x7

    .line 2
    if-ne p2, p1, :cond_2

    .line 3
    .line 4
    sget-object p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->z0()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    sget-object p1, Lpf/k;->a:Lpf/k;

    .line 13
    .line 14
    invoke-virtual {p1}, Lpf/k;->g()V

    .line 15
    .line 16
    .line 17
    sget-object p1, Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;->USER_SUBSCRIBED:Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;

    .line 18
    .line 19
    new-instance p2, Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$mPropertyObserver$1;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 25
    .line 26
    const-string v1, "episode"

    .line 27
    .line 28
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->S1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    new-instance v0, Lcom/startshorts/androidplayer/manager/immersion/feature/k;

    .line 36
    .line 37
    invoke-direct {v0, p1, p2}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;-><init>(Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;Ljava/util/HashMap;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$mPropertyObserver$1;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->p()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$mPropertyObserver$1;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->j2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lms/i;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-interface {p1}, Lms/i;->getValue()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Ljava/util/List;

    .line 59
    .line 60
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    sget-object p1, Lfk/h0;->a:Lfk/h0;

    .line 65
    .line 66
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$mPropertyObserver$1;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 67
    .line 68
    new-instance v1, Lyh/p2;

    .line 69
    .line 70
    invoke-direct {v1, p2, v0}, Lyh/p2;-><init>(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lcom/startshorts/androidplayer/manager/immersion/feature/k;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v1}, Lfk/h0;->e(Ljava/lang/Runnable;)V

    .line 74
    .line 75
    .line 76
    :goto_0
    sget-object p1, Lfk/h0;->a:Lfk/h0;

    .line 77
    .line 78
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$mPropertyObserver$1;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 79
    .line 80
    new-instance v0, Lyh/q2;

    .line 81
    .line 82
    invoke-direct {v0, p2}, Lyh/q2;-><init>(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0}, Lfk/h0;->e(Ljava/lang/Runnable;)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_1
    sget-object p1, Lfk/h0;->a:Lfk/h0;

    .line 90
    .line 91
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$mPropertyObserver$1;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 92
    .line 93
    new-instance v0, Lyh/r2;

    .line 94
    .line 95
    invoke-direct {v0, p2}, Lyh/r2;-><init>(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v0}, Lfk/h0;->e(Ljava/lang/Runnable;)V

    .line 99
    .line 100
    .line 101
    :cond_2
    :goto_1
    return-void
.end method
