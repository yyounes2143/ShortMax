.class public final Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;
.super Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;
.source "PhoneAuthViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPhoneAuthViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PhoneAuthViewModel.kt\ncom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,288:1\n1#2:289\n*E\n"
    }
.end annotation


# static fields
.field public static final j:Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final e:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/auth/f;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:Lms/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lms/i<",
            "Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private g:Lcom/startshorts/androidplayer/bean/auth/AuthReason;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private h:I

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->j:Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 5
    .line 6
    sget-object v1, Lcom/startshorts/androidplayer/viewmodel/auth/f$b;->a:Lcom/startshorts/androidplayer/viewmodel/auth/f$b;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 12
    .line 13
    new-instance v0, Lpk/c;

    .line 14
    .line 15
    invoke-direct {v0}, Lpk/c;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->f:Lms/i;

    .line 23
    .line 24
    sget-object v0, Lcom/startshorts/androidplayer/bean/auth/AuthReason;->BIND:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->g:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    iput v0, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->h:I

    .line 30
    .line 31
    return-void
.end method

.method public static synthetic A()Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->R()Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic B(Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;)Lms/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->f:Lms/i;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic C(Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->h:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic D(Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->i:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic E(Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->M(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic F(Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/account/Account;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->N(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/account/Account;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic G(Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer;Lcom/hades/aar/auth/base/AuthType;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->P(Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer;Lcom/hades/aar/auth/base/AuthType;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic H(Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;Lcom/hades/aar/auth/base/AuthType;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->Q(Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;Lcom/hades/aar/auth/base/AuthType;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic I(Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->h:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic J(Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->i:Z

    .line 2
    .line 3
    return-void
.end method

.method private final M(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/auth/f$h;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    sget-object v3, Lcom/startshorts/androidplayer/bean/auth/AuthReason;->LOGIN:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 7
    .line 8
    invoke-direct {v1, p1, v2, v3}, Lcom/startshorts/androidplayer/viewmodel/auth/f$h;-><init>(Ljava/lang/String;Lcom/hades/aar/auth/base/AuthType;Lcom/startshorts/androidplayer/bean/auth/AuthReason;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v0, "verifyOTP onFailure -> otp="

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->f(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private final N(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/account/Account;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "verifyOTP succeed-> token="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " newAccount="

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, " otp="

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    invoke-virtual {p0, p3}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sget-object p3, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 38
    .line 39
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->t0()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/account/Account;->getUserCode()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->V()V

    .line 54
    .line 55
    .line 56
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->a:Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;

    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->x(Z)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->u()V

    .line 63
    .line 64
    .line 65
    sget-object v0, Lcom/startshorts/androidplayer/repo/push/PushRepo;->a:Lcom/startshorts/androidplayer/repo/push/PushRepo;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/push/PushRepo;->C()V

    .line 68
    .line 69
    .line 70
    :cond_0
    const/4 v0, 0x2

    .line 71
    invoke-virtual {p2, v0}, Lcom/startshorts/androidplayer/bean/account/Account;->setType(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, p1}, Lcom/startshorts/androidplayer/bean/account/Account;->setToken(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p3, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->f1(Lcom/startshorts/androidplayer/bean/account/Account;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/account/Account;->getAudienceIdList()Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p3, p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->g1(Ljava/util/List;)V

    .line 85
    .line 86
    .line 87
    sget-object p1, Laa/a;->a:Laa/a;

    .line 88
    .line 89
    invoke-virtual {p1}, Laa/a;->d()Ljava/lang/ref/WeakReference;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    if-eqz p1, :cond_1

    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, Lcom/hades/aar/activity/IDActivity;

    .line 100
    .line 101
    if-eqz p1, :cond_1

    .line 102
    .line 103
    sget-object p2, Lng/g;->a:Lng/g;

    .line 104
    .line 105
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->t0()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {p2, p1, v0}, Lng/g;->e(Landroid/app/Activity;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 113
    .line 114
    new-instance p2, Lcom/startshorts/androidplayer/viewmodel/auth/f$i;

    .line 115
    .line 116
    const/4 v0, 0x0

    .line 117
    sget-object v1, Lcom/startshorts/androidplayer/bean/auth/AuthReason;->LOGIN:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 118
    .line 119
    invoke-direct {p2, v0, v1}, Lcom/startshorts/androidplayer/viewmodel/auth/f$i;-><init>(Lcom/hades/aar/auth/base/AuthType;Lcom/startshorts/androidplayer/bean/auth/AuthReason;)V

    .line 120
    .line 121
    .line 122
    invoke-static {p1, p2}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    new-instance p2, Lcom/startshorts/androidplayer/bean/eventbus/RefreshAccountEvent;

    .line 130
    .line 131
    invoke-direct {p2}, Lcom/startshorts/androidplayer/bean/eventbus/RefreshAccountEvent;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, p2}, Lau/c;->l(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->V0()Lkotlinx/coroutines/r;

    .line 138
    .line 139
    .line 140
    sget-object p1, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->a:Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;

    .line 141
    .line 142
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/rewards/RewardsRepo;->h()V

    .line 143
    .line 144
    .line 145
    return-void
.end method

.method private static final P(Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer;Lcom/hades/aar/auth/base/AuthType;Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object v1, Lcom/hades/aar/auth/base/AuthType;->PHONE_SEND:Lcom/hades/aar/auth/base/AuthType;

    .line 2
    .line 3
    if-ne p2, v1, :cond_0

    .line 4
    .line 5
    const-string p1, "onResultFail -> authType=PHONE_SEND"

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->f(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 11
    .line 12
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/auth/f$e;

    .line 13
    .line 14
    const/4 v4, 0x4

    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    move-object v0, p1

    .line 18
    move-object v2, p3

    .line 19
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/auth/f$e;-><init>(Lcom/hades/aar/auth/base/AuthType;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 20
    .line 21
    .line 22
    invoke-static {p0, p1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v1, "onResultFail -> authType="

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, ",msg="

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->f(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    if-nez p3, :cond_1

    .line 55
    .line 56
    const-string p3, ""

    .line 57
    .line 58
    :cond_1
    const/4 v0, 0x0

    .line 59
    const/4 v1, 0x2

    .line 60
    const-string v2, "The sms verification code used to create the phone auth credential is invalid"

    .line 61
    .line 62
    const/4 v3, 0x0

    .line 63
    invoke-static {p3, v2, v0, v1, v3}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p3

    .line 67
    if-eqz p3, :cond_2

    .line 68
    .line 69
    if-eqz p1, :cond_3

    .line 70
    .line 71
    sget p3, Lcom/startshorts/androidplayer/R$string;->phone_auth_fragment_check_content:I

    .line 72
    .line 73
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    if-eqz p1, :cond_3

    .line 79
    .line 80
    sget p3, Lcom/startshorts/androidplayer/R$string;->common_unknown_exception:I

    .line 81
    .line 82
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 87
    .line 88
    new-instance p3, Lcom/startshorts/androidplayer/viewmodel/auth/f$h;

    .line 89
    .line 90
    iget-object p0, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->g:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 91
    .line 92
    invoke-direct {p3, v3, p2, p0}, Lcom/startshorts/androidplayer/viewmodel/auth/f$h;-><init>(Ljava/lang/String;Lcom/hades/aar/auth/base/AuthType;Lcom/startshorts/androidplayer/bean/auth/AuthReason;)V

    .line 93
    .line 94
    .line 95
    invoke-static {p1, p3}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method private static final Q(Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;Lcom/hades/aar/auth/base/AuthType;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/hades/aar/auth/base/AuthType;->PHONE_SEND:Lcom/hades/aar/auth/base/AuthType;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const-string p1, "onResultSucceed -> authType=PHONE_SEND"

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 11
    .line 12
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/auth/f$f;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Lcom/startshorts/androidplayer/viewmodel/auth/f$f;-><init>(Lcom/hades/aar/auth/base/AuthType;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget p1, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->h:I

    .line 21
    .line 22
    add-int/lit8 p1, p1, 0x1

    .line 23
    .line 24
    iput p1, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->h:I

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v1, "onResultSucceed -> authType="

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 48
    .line 49
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/auth/f$i;

    .line 50
    .line 51
    iget-object p0, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->g:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 52
    .line 53
    invoke-direct {v1, p1, p0}, Lcom/startshorts/androidplayer/viewmodel/auth/f$i;-><init>(Lcom/hades/aar/auth/base/AuthType;Lcom/startshorts/androidplayer/bean/auth/AuthReason;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method private static final R()Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final T()V
    .locals 6

    .line 1
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$regionCode$1;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {v3, p0, v0}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$regionCode$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;Lrs/c;)V

    .line 5
    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x0

    .line 9
    const-string v1, "regionCode"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    move-object v0, p0

    .line 13
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private final U(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    sget-object v1, Lcom/startshorts/androidplayer/viewmodel/auth/f$g;->a:Lcom/startshorts/androidplayer/viewmodel/auth/f$g;

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    new-instance v5, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-direct {v5, p0, p1, p2, v0}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$sendOTP$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;Ljava/lang/String;Ljava/lang/String;Lrs/c;)V

    .line 12
    .line 13
    .line 14
    const/4 v6, 0x2

    .line 15
    const/4 v7, 0x0

    .line 16
    const-string v3, "sendOTP"

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    move-object v2, p0

    .line 20
    invoke-static/range {v2 .. v7}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private final W(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    sget-object v1, Lcom/startshorts/androidplayer/viewmodel/auth/f$j;->a:Lcom/startshorts/androidplayer/viewmodel/auth/f$j;

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$verifyOTP$1;

    .line 9
    .line 10
    const/4 v7, 0x0

    .line 11
    move-object v2, v0

    .line 12
    move-object v3, p0

    .line 13
    move-object v4, p1

    .line 14
    move-object v5, p2

    .line 15
    move-object v6, p3

    .line 16
    invoke-direct/range {v2 .. v7}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$verifyOTP$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)V

    .line 17
    .line 18
    .line 19
    const/4 v6, 0x2

    .line 20
    const-string v3, "verifyOTP"

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    move-object v2, p0

    .line 24
    move-object v5, v0

    .line 25
    invoke-static/range {v2 .. v7}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 26
    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final K()Lcom/startshorts/androidplayer/bean/auth/AuthReason;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->g:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 2
    .line 3
    return-object v0
.end method

.method public final L()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/auth/f;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->e:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final O(Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer;)V
    .locals 3
    .param p1    # Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->f:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->isInitialized()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->f:Lms/i;

    .line 11
    .line 12
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 19
    .line 20
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/auth/a;->p(Ljava/lang/ref/WeakReference;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->g:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 27
    .line 28
    sget-object v2, Lcom/startshorts/androidplayer/bean/auth/AuthReason;->BIND:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 29
    .line 30
    if-ne v1, v2, :cond_1

    .line 31
    .line 32
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$b;

    .line 33
    .line 34
    invoke-direct {v1, v0, p0, p1}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$b;-><init>(Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/auth/a;->r(Lke/a;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public final S(Lcom/startshorts/androidplayer/viewmodel/auth/e;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/viewmodel/auth/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "intent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/auth/e$b;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/auth/e$b;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/auth/e$b;->a()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/auth/e$b;->b()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {p0, v0, p1}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->U(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/auth/e$c;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/auth/e$c;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/auth/e$c;->b()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/auth/e$c;->a()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/auth/e$c;->c()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {p0, v0, v1, p1}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->W(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    instance-of p1, p1, Lcom/startshorts/androidplayer/viewmodel/auth/e$a;

    .line 47
    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->T()V

    .line 51
    .line 52
    .line 53
    :goto_0
    return-void

    .line 54
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 55
    .line 56
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 57
    .line 58
    .line 59
    throw p1
.end method

.method public final V(Lcom/startshorts/androidplayer/bean/auth/AuthReason;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/auth/AuthReason;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->g:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 7
    .line 8
    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "PhoneAuthViewModel"

    .line 2
    .line 3
    return-object v0
.end method

.method public w()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->f:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->isInitialized()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->f:Lms/i;

    .line 10
    .line 11
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/auth/a;->n()V

    .line 18
    .line 19
    .line 20
    :cond_0
    const/4 v0, 0x1

    .line 21
    iput v0, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->h:I

    .line 22
    .line 23
    return-void
.end method
