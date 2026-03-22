.class final Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AdManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/ad/AdManager;->t0(Landroid/app/Activity;Ljava/lang/String;JZZLkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lgt/g0;",
        "Lrs/c<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.startshorts.androidplayer.manager.ad.AdManager$waitGDPRConsent$2"
    f = "AdManager.kt"
    l = {
        0x728
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Landroid/app/Activity;

.field final synthetic j:J

.field final synthetic k:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic l:Ljava/lang/String;

.field final synthetic m:Ljava/lang/String;

.field final synthetic n:Lms/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lms/i<",
            "Lhi/c;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic o:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;JLkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Ljava/lang/String;Lms/i;ZLrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "J",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lms/i<",
            "+",
            "Lhi/c;",
            ">;Z",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2;->i:Landroid/app/Activity;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2;->j:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2;->k:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2;->l:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p6, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2;->m:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p7, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2;->n:Lms/i;

    .line 12
    .line 13
    iput-boolean p8, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2;->o:Z

    .line 14
    .line 15
    const/4 p1, 0x2

    .line 16
    invoke-direct {p0, p1, p9}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static synthetic i(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;ZZ)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2;->j(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;ZZ)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final j(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;ZZ)Lkotlin/Unit;
    .locals 8

    .line 1
    sget-object v0, Lca/i;->a:Lca/i;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lca/i;->q(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "onDlgClosed runAfterWaitOnUiThread -> showSucceed="

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v2, ",isClickConsent="

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v1}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->t(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    invoke-static {p4, p0}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->w(ZLandroid/app/Activity;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    if-eqz p5, :cond_3

    .line 41
    .line 42
    const-string/jumbo p0, "splash"

    .line 43
    .line 44
    .line 45
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-eqz p0, :cond_1

    .line 50
    .line 51
    sget-object p0, Lud/b;->a:Lud/b;

    .line 52
    .line 53
    invoke-virtual {p0, p2}, Lud/b;->D0(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result p4

    .line 57
    if-nez p4, :cond_1

    .line 58
    .line 59
    const-string/jumbo p4, "showConsentForm -> setGDPRShowedInSplash"

    .line 60
    .line 61
    .line 62
    invoke-static {p4}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->t(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, p2}, Lud/b;->P3(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 69
    .line 70
    new-instance v3, Landroid/os/Bundle;

    .line 71
    .line 72
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string p0, "scene"

    .line 76
    .line 77
    invoke-virtual {v3, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    if-eqz v0, :cond_2

    .line 81
    .line 82
    const-string p0, "confirm"

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    const-string p0, "cancel"

    .line 86
    .line 87
    :goto_0
    const-string p1, "action"

    .line 88
    .line 89
    invoke-virtual {v3, p1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 93
    .line 94
    const/4 v6, 0x4

    .line 95
    const/4 v7, 0x0

    .line 96
    const-string v2, "gdpr_result"

    .line 97
    .line 98
    const-wide/16 v4, 0x0

    .line 99
    .line 100
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    :cond_3
    iget-object p0, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast p0, Lkotlin/jvm/functions/Function0;

    .line 106
    .line 107
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 111
    .line 112
    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2;->i:Landroid/app/Activity;

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2;->j:J

    .line 6
    .line 7
    iget-object v4, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2;->k:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 8
    .line 9
    iget-object v5, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2;->l:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v6, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2;->m:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v7, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2;->n:Lms/i;

    .line 14
    .line 15
    iget-boolean v8, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2;->o:Z

    .line 16
    .line 17
    move-object v0, p1

    .line 18
    move-object v9, p2

    .line 19
    invoke-direct/range {v0 .. v9}, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2;-><init>(Landroid/app/Activity;JLkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/String;Ljava/lang/String;Lms/i;ZLrs/c;)V

    .line 20
    .line 21
    .line 22
    return-object p1
.end method

.method public final invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2;->h:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    sget-object p1, Lca/i;->a:Lca/i;

    .line 28
    .line 29
    invoke-virtual {p1}, Lca/i;->r()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_2

    .line 34
    .line 35
    const-string v1, "requestConsentInfoUpdate start, showLoadingDialog start"

    .line 36
    .line 37
    invoke-static {v1}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->t(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2;->n:Lms/i;

    .line 41
    .line 42
    invoke-static {v1}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->v(Lms/i;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2;->i:Landroid/app/Activity;

    .line 46
    .line 47
    const/4 v3, 0x2

    .line 48
    const/4 v4, 0x0

    .line 49
    invoke-static {p1, v1, v4, v3, v4}, Lca/i;->w(Lca/i;Landroid/app/Activity;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget-wide v5, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2;->j:J

    .line 53
    .line 54
    const-wide/16 v7, 0x0

    .line 55
    .line 56
    cmp-long p1, v5, v7

    .line 57
    .line 58
    if-lez p1, :cond_2

    .line 59
    .line 60
    new-instance p1, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2$1;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2;->i:Landroid/app/Activity;

    .line 63
    .line 64
    invoke-direct {p1, v1, v4}, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2$1;-><init>(Landroid/app/Activity;Lrs/c;)V

    .line 65
    .line 66
    .line 67
    iput v2, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2;->h:I

    .line 68
    .line 69
    invoke-static {v5, v6, p1, p0}, Lkotlinx/coroutines/TimeoutKt;->e(JLkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-ne p1, v0, :cond_2

    .line 74
    .line 75
    return-object v0

    .line 76
    :cond_2
    :goto_0
    sget-object p1, Lca/i;->a:Lca/i;

    .line 77
    .line 78
    invoke-virtual {p1}, Lca/i;->r()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_3

    .line 83
    .line 84
    const-string v0, "forceSetAdRequestAble when update failed"

    .line 85
    .line 86
    invoke-static {v0}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->s(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Lca/i;->n()V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2;->k:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 93
    .line 94
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast p1, Lkotlin/jvm/functions/Function0;

    .line 97
    .line 98
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 102
    .line 103
    return-object p1

    .line 104
    :cond_3
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2;->l:Ljava/lang/String;

    .line 105
    .line 106
    const-string/jumbo v1, "splash"

    .line 107
    .line 108
    .line 109
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_4

    .line 114
    .line 115
    sget-object v0, Lud/b;->a:Lud/b;

    .line 116
    .line 117
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2;->m:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Lud/b;->D0(Ljava/lang/String;)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_4

    .line 124
    .line 125
    const-string v0, "ignore -> getGDPRShowedInSplash=true,forceSetAdRequestAble(),afterWait.invoke()"

    .line 126
    .line 127
    invoke-static {v0}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->t(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Lca/i;->n()V

    .line 131
    .line 132
    .line 133
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2;->k:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 134
    .line 135
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast p1, Lkotlin/jvm/functions/Function0;

    .line 138
    .line 139
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 143
    .line 144
    return-object p1

    .line 145
    :cond_4
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2;->i:Landroid/app/Activity;

    .line 146
    .line 147
    invoke-virtual {p1, v0}, Lca/i;->q(Landroid/content/Context;)Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-eqz v0, :cond_5

    .line 152
    .line 153
    const-string p1, "GDPRManager.showForm ignore -> isClickConsent=true"

    .line 154
    .line 155
    invoke-static {p1}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->t(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2;->k:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 159
    .line 160
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast p1, Lkotlin/jvm/functions/Function0;

    .line 163
    .line 164
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 168
    .line 169
    return-object p1

    .line 170
    :cond_5
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2;->i:Landroid/app/Activity;

    .line 171
    .line 172
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-nez v0, :cond_7

    .line 177
    .line 178
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2;->i:Landroid/app/Activity;

    .line 179
    .line 180
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-eqz v0, :cond_6

    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_6
    const-string v0, "GDPRManager.showForm start -> isUpdateSuccess=true"

    .line 188
    .line 189
    invoke-static {v0}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->t(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 193
    .line 194
    new-instance v3, Landroid/os/Bundle;

    .line 195
    .line 196
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 197
    .line 198
    .line 199
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2;->l:Ljava/lang/String;

    .line 200
    .line 201
    const-string v2, "scene"

    .line 202
    .line 203
    invoke-virtual {v3, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 207
    .line 208
    const/4 v6, 0x4

    .line 209
    const/4 v7, 0x0

    .line 210
    const-string v2, "gdpr_pop_show"

    .line 211
    .line 212
    const-wide/16 v4, 0x0

    .line 213
    .line 214
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 215
    .line 216
    .line 217
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2;->i:Landroid/app/Activity;

    .line 218
    .line 219
    iget-object v10, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2;->l:Ljava/lang/String;

    .line 220
    .line 221
    iget-object v11, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2;->m:Ljava/lang/String;

    .line 222
    .line 223
    iget-object v12, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2;->k:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 224
    .line 225
    iget-boolean v13, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2;->o:Z

    .line 226
    .line 227
    new-instance v1, Lcom/startshorts/androidplayer/manager/ad/a;

    .line 228
    .line 229
    move-object v8, v1

    .line 230
    move-object v9, v0

    .line 231
    invoke-direct/range {v8 .. v13}, Lcom/startshorts/androidplayer/manager/ad/a;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Z)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1, v0, v1}, Lca/i;->A(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)V

    .line 235
    .line 236
    .line 237
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 238
    .line 239
    return-object p1

    .line 240
    :cond_7
    :goto_1
    const-string v0, "GDPRManager.showForm ignore -> activity.isFinishing"

    .line 241
    .line 242
    invoke-static {v0}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->s(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1}, Lca/i;->n()V

    .line 246
    .line 247
    .line 248
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/ad/AdManager$waitGDPRConsent$2;->k:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 249
    .line 250
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 251
    .line 252
    check-cast p1, Lkotlin/jvm/functions/Function0;

    .line 253
    .line 254
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 258
    .line 259
    return-object p1
.end method
