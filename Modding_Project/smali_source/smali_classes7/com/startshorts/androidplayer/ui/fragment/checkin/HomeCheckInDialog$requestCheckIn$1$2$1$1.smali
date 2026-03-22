.class final Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1$2$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HomeCheckInDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.startshorts.androidplayer.ui.fragment.checkin.HomeCheckInDialog$requestCheckIn$1$2$1$1"
    f = "HomeCheckInDialog.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHomeCheckInDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HomeCheckInDialog.kt\ncom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1$2$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,362:1\n1#2:363\n360#3,7:364\n*S KotlinDebug\n*F\n+ 1 HomeCheckInDialog.kt\ncom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1$2$1$1\n*L\n226#1:364,7\n*E\n"
    }
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

.field final synthetic j:Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;",
            "Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1$2$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1$2$1$1;->i:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1$2$1$1;->j:Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 2
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
    new-instance p1, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1$2$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1$2$1$1;->i:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1$2$1$1;->j:Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1$2$1$1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;Lrs/c;)V

    .line 8
    .line 9
    .line 10
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1$2$1$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1$2$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1$2$1$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1$2$1$1;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_6

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1$2$1$1;->i:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->b0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)Lcom/startshorts/androidplayer/databinding/DialogCheckInBinding;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogCheckInBinding;->e:Lcom/airbnb/lottie/LottieAnimationView;

    .line 18
    .line 19
    invoke-static {p1}, Ljk/b0;->d(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1$2$1$1;->i:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1$2$1$1;->j:Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;->getBonus()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->p0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;I)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1$2$1$1;->i:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->c0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->getSignRecords()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    check-cast p1, Ljava/lang/Iterable;

    .line 48
    .line 49
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1$2$1$1;->i:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

    .line 50
    .line 51
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    move-object v2, v1

    .line 66
    check-cast v2, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;

    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;->getDay()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->f0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_0

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    const/4 v1, 0x0

    .line 84
    :goto_0
    check-cast v1, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;

    .line 85
    .line 86
    if-eqz v1, :cond_2

    .line 87
    .line 88
    const/4 p1, 0x1

    .line 89
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;->setSign(Z)V

    .line 90
    .line 91
    .line 92
    :cond_2
    sget-object p1, Lcom/startshorts/androidplayer/manager/configure/ad/AdSignInfoManager;->a:Lcom/startshorts/androidplayer/manager/configure/ad/AdSignInfoManager;

    .line 93
    .line 94
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1$2$1$1;->i:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

    .line 95
    .line 96
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->c0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/manager/configure/ad/AdSignInfoManager;->c(Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1$2$1$1;->i:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

    .line 104
    .line 105
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->c0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    if-eqz p1, :cond_5

    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->getSignRecords()Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    if-eqz p1, :cond_5

    .line 116
    .line 117
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1$2$1$1;->i:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

    .line 118
    .line 119
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    const/4 v1, 0x0

    .line 124
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    const/4 v3, -0x1

    .line 129
    if-eqz v2, :cond_4

    .line 130
    .line 131
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    check-cast v2, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;

    .line 136
    .line 137
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;->getDay()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->f0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-eqz v2, :cond_3

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_4
    move v1, v3

    .line 156
    :goto_2
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1$2$1$1;->i:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

    .line 157
    .line 158
    if-eq v1, v3, :cond_5

    .line 159
    .line 160
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->d0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    if-eqz p1, :cond_5

    .line 165
    .line 166
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 167
    .line 168
    .line 169
    :cond_5
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog$requestCheckIn$1$2$1$1;->i:Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;

    .line 170
    .line 171
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;->q0(Lcom/startshorts/androidplayer/ui/fragment/checkin/HomeCheckInDialog;)V

    .line 172
    .line 173
    .line 174
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 175
    .line 176
    return-object p1

    .line 177
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 178
    .line 179
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 180
    .line 181
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    throw p1
.end method
