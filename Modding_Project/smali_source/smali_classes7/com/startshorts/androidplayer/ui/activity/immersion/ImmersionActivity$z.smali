.class public final Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$z;
.super Ljava/lang/Object;
.source "ImmersionActivity.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->T6()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nImmersionActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$initSeekbar$1\n+ 2 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,6800:1\n4827#2:6801\n1#3:6802\n*S KotlinDebug\n*F\n+ 1 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$initSeekbar$1\n*L\n3353#1:6801\n3353#1:6802\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$z;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;)V
    .locals 5

    .line 1
    const-string v0, "seekBar"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$z;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 7
    .line 8
    const-string v1, "onStopTrackingTouch"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$z;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 14
    .line 15
    sget-object v1, Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;->SEEKBAR_STOP_TOUCH:Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;

    .line 16
    .line 17
    new-instance v2, Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$z;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 23
    .line 24
    const-string v4, "seekbar"

    .line 25
    .line 26
    invoke-interface {v2, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    const-string v4, "episode"

    .line 30
    .line 31
    invoke-static {v3}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->S1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 39
    .line 40
    new-instance v3, Lcom/startshorts/androidplayer/manager/immersion/feature/k;

    .line 41
    .line 42
    invoke-direct {v3, v1, v2}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;-><init>(Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;Ljava/util/HashMap;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v3}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->A3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lcom/startshorts/androidplayer/manager/immersion/feature/k;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$z;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->S3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$z;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 54
    .line 55
    const/4 v1, 0x1

    .line 56
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->F4(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Z)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$z;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 60
    .line 61
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->M2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$z;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 65
    .line 66
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->r2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    const/4 v1, -0x1

    .line 71
    if-eq v0, v1, :cond_0

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->getProgress()I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$z;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 78
    .line 79
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->r2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    sub-int/2addr v0, p1

    .line 84
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    const/16 v2, 0x3e8

    .line 89
    .line 90
    if-lt v0, v2, :cond_0

    .line 91
    .line 92
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$z;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 93
    .line 94
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->y3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;I)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$z;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 98
    .line 99
    const/4 v0, 0x0

    .line 100
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->P3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Z)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$z;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 104
    .line 105
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->v2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-eqz p1, :cond_0

    .line 110
    .line 111
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$z;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 112
    .line 113
    const-string v0, "auto resumePlay -> stop tracking touch"

    .line 114
    .line 115
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$z;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 119
    .line 120
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->v3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V

    .line 121
    .line 122
    .line 123
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$z;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 124
    .line 125
    invoke-static {p1, v1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->N3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;I)V

    .line 126
    .line 127
    .line 128
    return-void
.end method

.method public b(Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;)V
    .locals 2

    .line 1
    const-string v0, "seekBar"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$z;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 7
    .line 8
    const-string v1, "onClickTracking"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$z;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->getProgress()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->y3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;I)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$z;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->P3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Z)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$z;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->v2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$z;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 37
    .line 38
    const-string v0, "auto resumePlay -> click tracking"

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$z;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 44
    .line 45
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->v3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void
.end method

.method public c(Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;IZ)V
    .locals 0

    .line 1
    const-string p2, "seekBar"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$z;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->getProgress()I

    .line 11
    .line 12
    .line 13
    move-result p3

    .line 14
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->getMax()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-static {p2, p3, p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->j4(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;II)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public d(Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;)V
    .locals 2

    .line 1
    const-string v0, "seekBar"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$z;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 7
    .line 8
    const-string v1, "onLongPressTracking"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$z;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->getProgress()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->N3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$z;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->getProgress()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->getMax()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-static {v0, v1, p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->j4(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;II)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public e(Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;)V
    .locals 7

    .line 1
    const-string v0, "seekBar"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$z;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 7
    .line 8
    const-string v1, "onStartTrackingTouch"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$z;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 14
    .line 15
    sget-object v1, Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;->SEEKBAR_START_TOUCH:Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;

    .line 16
    .line 17
    new-instance v2, Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$z;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 23
    .line 24
    const-string v4, "seekbar"

    .line 25
    .line 26
    invoke-interface {v2, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    const-string v4, "episode"

    .line 30
    .line 31
    invoke-static {v3}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->S1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    invoke-static {v3}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->d2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Ljava/lang/Iterable;

    .line 43
    .line 44
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    const/4 v5, 0x0

    .line 53
    if-eqz v4, :cond_1

    .line 54
    .line 55
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    move-object v6, v4

    .line 60
    check-cast v6, Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature;

    .line 61
    .line 62
    instance-of v6, v6, Lcom/startshorts/androidplayer/manager/immersion/feature/n;

    .line 63
    .line 64
    if-eqz v6, :cond_0

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    move-object v4, v5

    .line 68
    :goto_0
    instance-of v3, v4, Lcom/startshorts/androidplayer/manager/immersion/feature/n;

    .line 69
    .line 70
    if-nez v3, :cond_2

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    move-object v5, v4

    .line 74
    :goto_1
    check-cast v5, Lcom/startshorts/androidplayer/manager/immersion/feature/n;

    .line 75
    .line 76
    if-eqz v5, :cond_3

    .line 77
    .line 78
    const-string v3, "play_resolution"

    .line 79
    .line 80
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/manager/immersion/feature/n;->l()Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    :cond_3
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 88
    .line 89
    new-instance v3, Lcom/startshorts/androidplayer/manager/immersion/feature/k;

    .line 90
    .line 91
    invoke-direct {v3, v1, v2}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;-><init>(Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;Ljava/util/HashMap;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v0, v3}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->A3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lcom/startshorts/androidplayer/manager/immersion/feature/k;)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$z;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->getProgress()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->N3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;I)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$z;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 107
    .line 108
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->T3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$z;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->getProgress()I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/seekbar/DiscreteSeekBar2;->getMax()I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    invoke-static {v0, v1, p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->j4(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;II)V

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$z;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 125
    .line 126
    const/4 v0, 0x0

    .line 127
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->F4(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Z)V

    .line 128
    .line 129
    .line 130
    return-void
.end method
