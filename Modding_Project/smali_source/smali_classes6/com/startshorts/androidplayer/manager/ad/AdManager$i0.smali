.class public final Lcom/startshorts/androidplayer/manager/ad/AdManager$i0;
.super Ljava/lang/Object;
.source "AdManager.kt"

# interfaces
.implements Lca/f$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/ad/AdManager;->s0(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic b:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic c:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

.field final synthetic f:Lcom/startshorts/androidplayer/manager/ad/AdManager$a;

.field final synthetic g:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lca/h;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic h:Ljava/lang/String;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/manager/ad/AdManager$a;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            "Lcom/startshorts/androidplayer/manager/ad/AdManager$a;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lca/h;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$i0;->a:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$i0;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$i0;->c:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$i0;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$i0;->e:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$i0;->f:Lcom/startshorts/androidplayer/manager/ad/AdManager$a;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$i0;->g:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 14
    .line 15
    iput-object p8, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$i0;->h:Ljava/lang/String;

    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public a(Lca/d;Ljava/lang/Object;)V
    .locals 9

    .line 1
    const-string v0, "adInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$i0;->a:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$i0;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 12
    .line 13
    invoke-virtual {p1}, Lca/d;->h()Lcom/hades/aar/admanager/core/AdFormat;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    sget-object v3, Lcom/hades/aar/admanager/core/AdFormat;->REWARDED_VIDEO:Lcom/hades/aar/admanager/core/AdFormat;

    .line 18
    .line 19
    if-eq v2, v3, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    instance-of v1, p2, Ljava/lang/Boolean;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    check-cast p2, Ljava/lang/Boolean;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p2, 0x0

    .line 30
    :goto_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 31
    .line 32
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    :goto_1
    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 37
    .line 38
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 39
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string/jumbo v1, "showRewardVideoAd -> onDismiss("

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$i0;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 52
    .line 53
    iget-boolean v1, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const/16 v1, 0x29

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v1, "AdManager"

    .line 68
    .line 69
    invoke-virtual {p2, v1, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object p2, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$i0;->c:Lkotlin/jvm/functions/Function1;

    .line 73
    .line 74
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$i0;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 75
    .line 76
    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 77
    .line 78
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    sget-object p2, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 86
    .line 87
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$i0;->d:Ljava/lang/String;

    .line 88
    .line 89
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$i0;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 90
    .line 91
    iget-boolean v3, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 92
    .line 93
    iget-object v5, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$i0;->e:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 94
    .line 95
    iget-object v6, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$i0;->f:Lcom/startshorts/androidplayer/manager/ad/AdManager$a;

    .line 96
    .line 97
    move-object v1, p2

    .line 98
    move-object v4, p1

    .line 99
    invoke-virtual/range {v1 .. v6}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->S(Ljava/lang/String;ZLca/d;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/manager/ad/AdManager$a;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$i0;->g:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 103
    .line 104
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 105
    .line 106
    move-object v4, v0

    .line 107
    check-cast v4, Lca/h;

    .line 108
    .line 109
    if-eqz v4, :cond_2

    .line 110
    .line 111
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$i0;->h:Ljava/lang/String;

    .line 112
    .line 113
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$i0;->d:Ljava/lang/String;

    .line 114
    .line 115
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$i0;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 116
    .line 117
    iget-object v7, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$i0;->e:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 118
    .line 119
    iget-object v8, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$i0;->f:Lcom/startshorts/androidplayer/manager/ad/AdManager$a;

    .line 120
    .line 121
    iget-boolean v5, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 122
    .line 123
    move-object v1, p2

    .line 124
    move-object v6, p1

    .line 125
    invoke-virtual/range {v1 .. v8}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->Q(Ljava/lang/String;Ljava/lang/String;Lca/h;ZLca/d;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/manager/ad/AdManager$a;)V

    .line 126
    .line 127
    .line 128
    :cond_2
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$i0;->g:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 129
    .line 130
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 131
    .line 132
    if-nez v0, :cond_3

    .line 133
    .line 134
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$i0;->d:Ljava/lang/String;

    .line 135
    .line 136
    invoke-static {p2, v0, p1}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->p(Lcom/startshorts/androidplayer/manager/ad/AdManager;Ljava/lang/String;Lca/d;)Lkotlinx/coroutines/r;

    .line 137
    .line 138
    .line 139
    :cond_3
    return-void
.end method
