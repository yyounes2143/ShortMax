.class public final Lcom/startshorts/androidplayer/manager/ad/AdManager$x;
.super Ljava/lang/Object;
.source "AdManager.kt"

# interfaces
.implements Lca/f$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/ad/AdManager;->l0(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;JJZLkotlin/jvm/functions/Function1;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic c:Lkotlin/jvm/internal/Ref$BooleanRef;

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
.method constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/manager/ad/AdManager$a;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$x;->a:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$x;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$x;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$x;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$x;->e:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$x;->f:Lcom/startshorts/androidplayer/manager/ad/AdManager$a;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$x;->g:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 14
    .line 15
    iput-object p8, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$x;->h:Ljava/lang/String;

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
    .locals 10

    .line 1
    const-string v0, "adInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$x;->a:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/c;->a:Lcom/startshorts/androidplayer/manager/configure/ad/c;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/ad/c;->h()Lcom/startshorts/androidplayer/manager/configure/ad/c$a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/ad/c$a;->e()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$x;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 28
    .line 29
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$x;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 30
    .line 31
    invoke-virtual {p1}, Lca/d;->h()Lcom/hades/aar/admanager/core/AdFormat;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    sget-object v3, Lcom/hades/aar/admanager/core/AdFormat;->REWARDED_VIDEO:Lcom/hades/aar/admanager/core/AdFormat;

    .line 36
    .line 37
    if-eq v2, v3, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    instance-of v1, p2, Ljava/lang/Boolean;

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    check-cast p2, Ljava/lang/Boolean;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 p2, 0x0

    .line 48
    :goto_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 49
    .line 50
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    :goto_1
    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 55
    .line 56
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 57
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string/jumbo v1, "showInterstitialAd -> onDismiss("

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$x;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 70
    .line 71
    iget-boolean v1, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const/16 v1, 0x29

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const-string v1, "AdManager"

    .line 86
    .line 87
    invoke-virtual {p2, v1, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    sget-object p2, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 91
    .line 92
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$x;->d:Ljava/lang/String;

    .line 93
    .line 94
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$x;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 95
    .line 96
    iget-boolean v4, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 97
    .line 98
    iget-object v6, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$x;->e:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 99
    .line 100
    iget-object v7, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$x;->f:Lcom/startshorts/androidplayer/manager/ad/AdManager$a;

    .line 101
    .line 102
    move-object v2, p2

    .line 103
    move-object v5, p1

    .line 104
    invoke-virtual/range {v2 .. v7}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->S(Ljava/lang/String;ZLca/d;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/manager/ad/AdManager$a;)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$x;->g:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 108
    .line 109
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 110
    .line 111
    move-object v5, v0

    .line 112
    check-cast v5, Lca/h;

    .line 113
    .line 114
    if-eqz v5, :cond_3

    .line 115
    .line 116
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$x;->h:Ljava/lang/String;

    .line 117
    .line 118
    iget-object v4, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$x;->d:Ljava/lang/String;

    .line 119
    .line 120
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$x;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 121
    .line 122
    iget-object v8, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$x;->e:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 123
    .line 124
    iget-object v9, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$x;->f:Lcom/startshorts/androidplayer/manager/ad/AdManager$a;

    .line 125
    .line 126
    iget-boolean v6, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 127
    .line 128
    move-object v2, p2

    .line 129
    move-object v7, p1

    .line 130
    invoke-virtual/range {v2 .. v9}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->Q(Ljava/lang/String;Ljava/lang/String;Lca/h;ZLca/d;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/manager/ad/AdManager$a;)V

    .line 131
    .line 132
    .line 133
    :cond_3
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$x;->g:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 134
    .line 135
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 136
    .line 137
    if-nez v0, :cond_4

    .line 138
    .line 139
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$x;->d:Ljava/lang/String;

    .line 140
    .line 141
    invoke-static {p2, v0, p1}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->p(Lcom/startshorts/androidplayer/manager/ad/AdManager;Ljava/lang/String;Lca/d;)Lkotlinx/coroutines/r;

    .line 142
    .line 143
    .line 144
    :cond_4
    return-void
.end method
