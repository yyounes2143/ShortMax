.class public final Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$k;
.super Ljava/lang/Object;
.source "ImmersionActivity.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/manager/immersion/feature/n$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->m5()Lcom/startshorts/androidplayer/manager/immersion/feature/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nImmersionActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$createPlayResolutionFeature$1$1\n+ 2 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity\n*L\n1#1,6800:1\n2998#2,7:6801\n*S KotlinDebug\n*F\n+ 1 ImmersionActivity.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$createPlayResolutionFeature$1$1\n*L\n3828#1:6801,7\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$k;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic h(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$k;->i(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final i(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->B4(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lkotlinx/coroutines/r;

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method


# virtual methods
.method public a(ILcom/startshorts/androidplayer/bean/shorts/PlayResolution;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Ljava/lang/Integer;)V
    .locals 5

    .line 1
    const-string v0, "selectedResolution"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "playableResolution"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$k;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->P3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Z)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    if-eq p1, v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x5

    .line 21
    if-eq p1, v0, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$k;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->J2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->isAuto()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$k;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 36
    .line 37
    sget v1, Lcom/startshorts/androidplayer/R$string;->immersion_activity_switch_resolution_auto_process_tip:I

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$k;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 45
    .line 46
    sget v1, Lcom/startshorts/androidplayer/R$string;->immersion_activity_switch_resolution_process_tip:I

    .line 47
    .line 48
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolutionValue()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$k;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 68
    .line 69
    invoke-static {v1, v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->r4(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :goto_1
    const/4 v0, 0x2

    .line 73
    if-eq p1, v0, :cond_3

    .line 74
    .line 75
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$k;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 76
    .line 77
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->k2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$k;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 85
    .line 86
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->l2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lms/i;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;

    .line 95
    .line 96
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/player/b$l;

    .line 97
    .line 98
    invoke-direct {v1, p3}, Lcom/startshorts/androidplayer/viewmodel/player/b$l;-><init>(Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/player/PlayerViewModel;->M(Lcom/startshorts/androidplayer/viewmodel/player/b;)V

    .line 102
    .line 103
    .line 104
    iget-object p3, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$k;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 105
    .line 106
    invoke-static {p3}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->v3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V

    .line 107
    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$k;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 111
    .line 112
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->c2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    if-eqz v0, :cond_4

    .line 117
    .line 118
    invoke-virtual {v0, p3}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->u(Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;)V

    .line 119
    .line 120
    .line 121
    :cond_4
    iget-object p3, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$k;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 122
    .line 123
    invoke-static {p3}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->O2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V

    .line 124
    .line 125
    .line 126
    :goto_3
    iget-object p3, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$k;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 127
    .line 128
    const-wide/16 v0, 0x1388

    .line 129
    .line 130
    invoke-static {p3, v0, v1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->H1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;J)V

    .line 131
    .line 132
    .line 133
    iget-object p3, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$k;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 134
    .line 135
    invoke-static {p3}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->B4(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lkotlinx/coroutines/r;

    .line 136
    .line 137
    .line 138
    iget-object p3, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$k;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 139
    .line 140
    sget-object v0, Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;->SWITCH_RESOLUTION:Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;

    .line 141
    .line 142
    new-instance v1, Ljava/util/HashMap;

    .line 143
    .line 144
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 145
    .line 146
    .line 147
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$k;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 148
    .line 149
    const-string v3, "episode"

    .line 150
    .line 151
    invoke-static {v2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->S1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    const-string v3, "immersion_job_manager"

    .line 159
    .line 160
    invoke-static {v2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->i2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionJobsManager;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    const-string v2, "play_resolution"

    .line 168
    .line 169
    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    const-string p2, "player_error_resolution_value"

    .line 173
    .line 174
    invoke-interface {v1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    const-string p2, "switch_resolution_from"

    .line 182
    .line 183
    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 187
    .line 188
    new-instance p1, Lcom/startshorts/androidplayer/manager/immersion/feature/k;

    .line 189
    .line 190
    invoke-direct {p1, v0, v1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;-><init>(Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;Ljava/util/HashMap;)V

    .line 191
    .line 192
    .line 193
    invoke-static {p3, p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->A3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lcom/startshorts/androidplayer/manager/immersion/feature/k;)V

    .line 194
    .line 195
    .line 196
    return-void
.end method

.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$k;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->W1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->c:Landroidx/databinding/ViewStubProxy;

    .line 8
    .line 9
    const-string v1, "cartonDowngradeResolutionLayoutViewstub"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-static {v0, v3, v1, v2}, Ljk/e0;->b(Landroidx/databinding/ViewStubProxy;IILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "resolutionValue"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$k;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "onSwitchResolutionSuccess -> resolutionValue("

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const/16 p1, 0x29

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$k;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 34
    .line 35
    sget-object v0, Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;->SWITCH_RESOLUTION_SUCCESS:Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;

    .line 36
    .line 37
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->z3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$k;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->O2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$k;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->J2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$k;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 7
    .line 8
    sget-object v1, Lud/a;->a:Lud/a;

    .line 9
    .line 10
    invoke-virtual {v1}, Lud/a;->q()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "1080P"

    .line 15
    .line 16
    invoke-static {v0, v2, v1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->s4(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public e(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "onSwitchClick"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$k;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->X3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lkotlin/jvm/functions/Function0;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$k;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->p()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$k;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 10
    .line 11
    sget v1, Lcom/startshorts/androidplayer/R$string;->common_play_failed:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->x(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$k;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->Q2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$k;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    const/4 v2, 0x0

    .line 25
    const-string v3, "onDowngradeResolutionFailed"

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-static {v0, v3, v4, v1, v2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->ga(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    sget-object v0, Lcom/startshorts/androidplayer/utils/ResourceHandler;->a:Lcom/startshorts/androidplayer/utils/ResourceHandler;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$k;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 34
    .line 35
    new-instance v2, Lyh/j2;

    .line 36
    .line 37
    invoke-direct {v2, v1}, Lyh/j2;-><init>(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1, v2}, Lcom/startshorts/androidplayer/utils/ResourceHandler;->l(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public g(Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "selectedResolution"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "resolutionStr"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    const-string v2, "p"

    .line 12
    .line 13
    const-string v3, ""

    .line 14
    .line 15
    const/4 v5, 0x4

    .line 16
    const/4 v6, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    move-object v1, p2

    .line 19
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    const/4 v0, -0x1

    .line 29
    :goto_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$k;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 30
    .line 31
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->c2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionEpisodeManager;->s(I)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$k;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->W1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->s:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 47
    .line 48
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    const/4 v2, 0x0

    .line 53
    :goto_1
    if-ge v2, v1, :cond_2

    .line 54
    .line 55
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->W1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    iget-object v3, v3, Lcom/startshorts/androidplayer/databinding/ActivityImmersionBinding;->s:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 60
    .line 61
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    instance-of v4, v3, Lnj/b;

    .line 66
    .line 67
    if-eqz v4, :cond_1

    .line 68
    .line 69
    check-cast v3, Lnj/a;

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    const/4 v3, 0x0

    .line 76
    :goto_2
    check-cast v3, Lnj/b;

    .line 77
    .line 78
    if-eqz v3, :cond_3

    .line 79
    .line 80
    invoke-interface {v3, p2}, Lnj/b;->h(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_3
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$k;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 84
    .line 85
    invoke-static {p2, p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->E4(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method
