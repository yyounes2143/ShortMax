.class public final Lcom/startshorts/androidplayer/ui/activity/MainActivity$createFragmentStateAdapter$2;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "MainActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/MainActivity;->b0(Ljava/util/List;)Landroidx/viewpager2/adapter/FragmentStateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic i:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

.field final synthetic j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field final synthetic k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/activity/MainActivity;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity$createFragmentStateAdapter$2;->i:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity$createFragmentStateAdapter$2;->j:Ljava/util/List;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity$createFragmentStateAdapter$2;->k:Ljava/util/List;

    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public containsItem(J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity$createFragmentStateAdapter$2;->k:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity$createFragmentStateAdapter$2;->j:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Class;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    new-array v1, v0, [Ljava/lang/Class;

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-array v0, v0, [Ljava/lang/Object;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v0, "null cannot be cast to non-null type androidx.fragment.app.Fragment"

    .line 23
    .line 24
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 28
    .line 29
    sget-object v0, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->a:Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->B(Landroidx/fragment/app/Fragment;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    new-instance v0, Landroid/os/Bundle;

    .line 38
    .line 39
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity$createFragmentStateAdapter$2;->i:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 43
    .line 44
    const-string v2, "from"

    .line 45
    .line 46
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->S(Lcom/startshorts/androidplayer/ui/activity/MainActivity;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 57
    .line 58
    const-string v1, ""

    .line 59
    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    move-object v0, p1

    .line 63
    check-cast v0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 64
    .line 65
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity$createFragmentStateAdapter$2;->i:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 66
    .line 67
    invoke-static {v2}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->T(Lcom/startshorts/androidplayer/ui/activity/MainActivity;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->R2(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity$createFragmentStateAdapter$2;->i:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 75
    .line 76
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->X(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    instance-of v0, p1, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 81
    .line 82
    if-eqz v0, :cond_2

    .line 83
    .line 84
    move-object v0, p1

    .line 85
    check-cast v0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 86
    .line 87
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity$createFragmentStateAdapter$2;->i:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 88
    .line 89
    invoke-static {v2}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->T(Lcom/startshorts/androidplayer/ui/activity/MainActivity;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->j4(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity$createFragmentStateAdapter$2;->i:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 97
    .line 98
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->Y(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity$createFragmentStateAdapter$2;->i:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 102
    .line 103
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->R(Lcom/startshorts/androidplayer/ui/activity/MainActivity;)Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    if-nez v0, :cond_3

    .line 108
    .line 109
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity$createFragmentStateAdapter$2;->i:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 110
    .line 111
    new-instance v1, Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->W(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Ljava/util/List;)V

    .line 117
    .line 118
    .line 119
    :cond_3
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity$createFragmentStateAdapter$2;->i:Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 120
    .line 121
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->R(Lcom/startshorts/androidplayer/ui/activity/MainActivity;)Ljava/util/List;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    if-eqz v0, :cond_4

    .line 126
    .line 127
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 128
    .line 129
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    :cond_4
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity$createFragmentStateAdapter$2;->j:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/MainActivity$createFragmentStateAdapter$2;->k:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method
