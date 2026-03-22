.class public final Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$f1;
.super Ljava/lang/Object;
.source "ImmersionActivity.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->Ca(ILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;

.field final synthetic c:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;",
            "Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$f1;->a:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$f1;->b:Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$f1;->c:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$f1;->a:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$f1;->b:Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/SubsProExpiredDialog;->V()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-nez v0, :cond_6

    .line 14
    .line 15
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 16
    .line 17
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$f1;->c:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 21
    .line 22
    invoke-static {v2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->U1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const/4 v3, 0x0

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    monitor-enter v2

    .line 30
    :try_start_0
    move-object v4, v2

    .line 31
    check-cast v4, Ljava/lang/Iterable;

    .line 32
    .line 33
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-eqz v5, :cond_1

    .line 42
    .line 43
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    move-object v6, v5

    .line 48
    check-cast v6, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 49
    .line 50
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isLocked()Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    if-eqz v6, :cond_0

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    move-object v5, v3

    .line 60
    :goto_0
    iput-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 61
    .line 62
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    monitor-exit v2

    .line 65
    goto :goto_2

    .line 66
    :goto_1
    monitor-exit v2

    .line 67
    throw v0

    .line 68
    :cond_2
    :goto_2
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 71
    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    goto :goto_3

    .line 83
    :cond_3
    move-object v0, v3

    .line 84
    :goto_3
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$f1;->c:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 85
    .line 86
    invoke-static {v2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->S1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    if-eqz v2, :cond_4

    .line 91
    .line 92
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    :cond_4
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_5

    .line 105
    .line 106
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$f1;->c:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 107
    .line 108
    const-string v2, "other"

    .line 109
    .line 110
    invoke-static {v0, v2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->O1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_5
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$f1;->c:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 115
    .line 116
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->S1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    if-eqz v0, :cond_6

    .line 121
    .line 122
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$f1;->c:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->setUnlockJustNow(Z)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    const/4 v6, 0x4

    .line 136
    const/4 v7, 0x0

    .line 137
    const/4 v5, 0x0

    .line 138
    invoke-static/range {v2 .. v7}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->D8(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;IILjava/lang/String;ILjava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$f1;->c:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 142
    .line 143
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->y2(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    if-eqz v0, :cond_7

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->B(Z)V

    .line 150
    .line 151
    .line 152
    :cond_7
    return-void
.end method
