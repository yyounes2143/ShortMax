.class public final Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;
.super Ljava/lang/Object;
.source "ActPaymentDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nActPaymentDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActPaymentDelegate.kt\ncom/startshorts/androidplayer/manager/billing/ActPaymentDelegate\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,573:1\n1863#2,2:574\n1863#2,2:576\n*S KotlinDebug\n*F\n+ 1 ActPaymentDelegate.kt\ncom/startshorts/androidplayer/manager/billing/ActPaymentDelegate\n*L\n136#1:574,2\n395#1:576,2\n*E\n"
    }
.end annotation


# static fields
.field public static final o:Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Lcom/startshorts/androidplayer/bean/act/ActResource;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final b:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private d:Z

.field private e:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Lcom/startshorts/androidplayer/bean/subs/SubsSku;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private h:Z

.field private i:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private j:Z

.field private k:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private m:Lat/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lat/n<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceResult;",
            ">;-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private n:Lhi/b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->o:Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/startshorts/androidplayer/bean/act/ActResource;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/act/ActResource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->a:Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 5
    .line 6
    new-instance p1, Lle/b;

    .line 7
    .line 8
    invoke-direct {p1}, Lle/b;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->b:Lms/i;

    .line 16
    .line 17
    new-instance p1, Lle/c;

    .line 18
    .line 19
    invoke-direct {p1}, Lle/c;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->c:Lms/i;

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->d:Z

    .line 30
    .line 31
    const-string p1, ""

    .line 32
    .line 33
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->i:Ljava/lang/String;

    .line 34
    .line 35
    return-void
.end method

.method private static final A(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->n:Lhi/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->n:Lhi/b;

    .line 10
    .line 11
    return-void
.end method

.method private final B(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V
    .locals 12

    .line 1
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->e:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 2
    .line 3
    if-eqz v2, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->i:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v6, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->a:Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 10
    .line 11
    const/16 v10, 0x1d0

    .line 12
    .line 13
    const/4 v11, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v7, 0x0

    .line 16
    const/4 v8, 0x0

    .line 17
    const/4 v9, 0x0

    .line 18
    move-object v3, p2

    .line 19
    move-object v4, p1

    .line 20
    invoke-static/range {v0 .. v11}, Lcom/startshorts/androidplayer/manager/event/EventManager;->T0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method private final C(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V
    .locals 13

    .line 1
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->f:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    if-eqz v2, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->i:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v6, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->a:Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 10
    .line 11
    const/16 v11, 0x3d0

    .line 12
    .line 13
    const/4 v12, 0x0

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v7, 0x0

    .line 16
    const/4 v8, 0x0

    .line 17
    const/4 v9, 0x0

    .line 18
    const/4 v10, 0x0

    .line 19
    move-object v3, p2

    .line 20
    move-object v4, p1

    .line 21
    invoke-static/range {v0 .. v12}, Lcom/startshorts/androidplayer/manager/event/EventManager;->U0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method private static final D()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method private static final E()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method private static final I(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    .line 1
    sget-object p1, Laa/a;->a:Laa/a;

    .line 2
    .line 3
    invoke-virtual {p1}, Laa/a;->d()Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/hades/aar/activity/IDActivity;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object p1, v0

    .line 18
    :goto_0
    instance-of v1, p1, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    move-object v0, p1

    .line 23
    check-cast v0, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 24
    .line 25
    :cond_1
    if-eqz v0, :cond_2

    .line 26
    .line 27
    sget p1, Lcom/startshorts/androidplayer/R$string;->common_unknown_exception:I

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->x(I)V

    .line 30
    .line 31
    .line 32
    :cond_2
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->z()V

    .line 33
    .line 34
    .line 35
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 36
    .line 37
    return-object p0
.end method

.method private final K()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->e:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGpSkuId()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    :cond_0
    move-object v0, v1

    .line 14
    :cond_1
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->f:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 15
    .line 16
    if-eqz v2, :cond_3

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-nez v2, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    move-object v1, v2

    .line 26
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    const-string v3, "ActPaymentDelegate"

    .line 31
    .line 32
    const/16 v4, 0x29

    .line 33
    .line 34
    if-nez v2, :cond_5

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_5

    .line 41
    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v5, "queryPriceFromGoogle failed : coinSkuId("

    .line 48
    .line 49
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v0, ") subsSkuId("

    .line 56
    .line 57
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 71
    .line 72
    invoke-virtual {v1, v3, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->g:Lkotlin/jvm/functions/Function2;

    .line 76
    .line 77
    if-eqz v1, :cond_4

    .line 78
    .line 79
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 80
    .line 81
    invoke-interface {v1, v2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    :cond_4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->z()V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    .line 89
    .line 90
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-lez v5, :cond_6

    .line 98
    .line 99
    new-instance v5, Lzc/g;

    .line 100
    .line 101
    sget-object v6, Lle/h;->a:Lle/h;

    .line 102
    .line 103
    invoke-virtual {v6}, Lle/h;->a()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    filled-new-array {v0}, [Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-direct {v5, v6, v0}, Lzc/g;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 116
    .line 117
    .line 118
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    :cond_6
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-lez v0, :cond_7

    .line 126
    .line 127
    new-instance v0, Lzc/g;

    .line 128
    .line 129
    sget-object v5, Lle/h;->a:Lle/h;

    .line 130
    .line 131
    invoke-virtual {v5}, Lle/h;->b()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    filled-new-array {v1}, [Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-direct {v0, v5, v1}, Lzc/g;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 144
    .line 145
    .line 146
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    :cond_7
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 150
    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    const-string v5, "queryPriceFromGoogle -> supportOneTimePurchase("

    .line 157
    .line 158
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    sget-object v5, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 162
    .line 163
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->A()Z

    .line 164
    .line 165
    .line 166
    move-result v6

    .line 167
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string v6, ") supportSubscription("

    .line 171
    .line 172
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->B()Z

    .line 176
    .line 177
    .line 178
    move-result v6

    .line 179
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {v0, v3, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->t()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {v5, v0, v2}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->e0(Ljava/lang/String;Ljava/util/List;)V

    .line 197
    .line 198
    .line 199
    return-void
.end method

.method private final L(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    check-cast p1, Ljava/lang/Iterable;

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;

    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->isSubscription()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_0

    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->getSkuId()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->getSkuId()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-nez p1, :cond_2

    .line 61
    .line 62
    new-instance p1, Lzc/g;

    .line 63
    .line 64
    sget-object v3, Lle/h;->a:Lle/h;

    .line 65
    .line 66
    invoke-virtual {v3}, Lle/h;->a()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-direct {p1, v3, v1}, Lzc/g;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 71
    .line 72
    .line 73
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    :cond_2
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-nez p1, :cond_3

    .line 81
    .line 82
    new-instance p1, Lzc/g;

    .line 83
    .line 84
    sget-object v1, Lle/h;->a:Lle/h;

    .line 85
    .line 86
    invoke-virtual {v1}, Lle/h;->b()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-direct {p1, v1, v2}, Lzc/g;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 91
    .line 92
    .line 93
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    :cond_3
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 97
    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v2, "queryPriceFromGoogle -> supportOneTimePurchase("

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    sget-object v2, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 109
    .line 110
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->A()Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v3, ") supportSubscription("

    .line 118
    .line 119
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->B()Z

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const/16 v3, 0x29

    .line 130
    .line 131
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    const-string v3, "ActPaymentDelegate"

    .line 139
    .line 140
    invoke-virtual {p1, v3, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->t()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {v2, p1, v0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->e0(Ljava/lang/String;Ljava/util/List;)V

    .line 148
    .line 149
    .line 150
    return-void
.end method

.method private final N(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;)V
    .locals 2

    .line 1
    sget-object v0, Lfk/h0;->a:Lfk/h0;

    .line 2
    .line 3
    new-instance v1, Lle/e;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lle/e;-><init>(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lfk/h0;->e(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static final O(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;)V
    .locals 1

    .line 1
    new-instance v0, Lgi/a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lgi/a;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lfi/a;->show()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final P(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->z()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lfk/h0;->a:Lfk/h0;

    .line 5
    .line 6
    new-instance v1, Lle/d;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lle/d;-><init>(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lfk/h0;->e(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static final Q(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lhi/b;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lhi/b;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-virtual {v0, p1}, Lhi/b;->w(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lfi/a;->show()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->n:Lhi/b;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic a(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->A(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->I(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->Q(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->D()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic e()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->E()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic f(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->O(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic g(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->t()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic h(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->g:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic i(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->j:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic j(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->l:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic k(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->y(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Ljava/util/List;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic l(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->z()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic m(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->B(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic n(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->C(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic o(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->K()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic p(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->L(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic q(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic r(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->h:Z

    .line 2
    .line 3
    return-void
.end method

.method private final s(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->d:Z

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->t()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->w()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    new-instance v4, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$b;

    .line 14
    .line 15
    invoke-direct {v4, p0, p1}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$b;-><init>(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->t(ZLjava/lang/String;Ljava/lang/String;Lle/g;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private final t()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->w()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x5f

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->x()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method private final u(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->A()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    invoke-direct/range {p0 .. p1}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->N(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;)V

    .line 12
    .line 13
    .line 14
    goto/16 :goto_0

    .line 15
    .line 16
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuDetails()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 23
    .line 24
    new-instance v5, Landroid/os/Bundle;

    .line 25
    .line 26
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v3, "amount"

    .line 30
    .line 31
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getRecharge()F

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    invoke-virtual {v5, v3, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 36
    .line 37
    .line 38
    const-string/jumbo v3, "sku"

    .line 39
    .line 40
    .line 41
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGpSkuId()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v5, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v3, "product_id"

    .line 49
    .line 50
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuProductId()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v5, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string v3, "scene"

    .line 58
    .line 59
    iget-object v4, v0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->i:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v5, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 65
    .line 66
    const/4 v8, 0x4

    .line 67
    const/4 v9, 0x0

    .line 68
    const-string/jumbo v4, "win_product_create_order"

    .line 69
    .line 70
    .line 71
    const-wide/16 v6, 0x0

    .line 72
    .line 73
    move-object v3, v2

    .line 74
    invoke-static/range {v3 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    iget-object v4, v0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->i:Ljava/lang/String;

    .line 78
    .line 79
    iget-object v7, v0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->a:Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 80
    .line 81
    const/16 v14, 0x3f4

    .line 82
    .line 83
    const/4 v15, 0x0

    .line 84
    const/4 v6, 0x0

    .line 85
    const/4 v8, 0x0

    .line 86
    const/4 v10, 0x0

    .line 87
    const/4 v11, 0x0

    .line 88
    const/4 v12, 0x0

    .line 89
    const/4 v13, 0x0

    .line 90
    move-object/from16 v5, p2

    .line 91
    .line 92
    invoke-static/range {v3 .. v15}, Lcom/startshorts/androidplayer/manager/event/EventManager;->F0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    iget-object v4, v0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->i:Ljava/lang/String;

    .line 96
    .line 97
    iget-object v7, v0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->a:Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 98
    .line 99
    const/16 v13, 0x1f4

    .line 100
    .line 101
    const/4 v14, 0x0

    .line 102
    invoke-static/range {v3 .. v14}, Lcom/startshorts/androidplayer/manager/event/EventManager;->B0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    iget-object v2, v0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->i:Ljava/lang/String;

    .line 106
    .line 107
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->t()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    iget-object v7, v0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->a:Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 112
    .line 113
    const/16 v8, 0x10

    .line 114
    .line 115
    move-object/from16 v3, p1

    .line 116
    .line 117
    invoke-static/range {v1 .. v9}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->M(Lcom/startshorts/androidplayer/repo/billing/BillingRepo;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;ILjava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_1
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 122
    .line 123
    const-string v2, "ActPaymentDelegate"

    .line 124
    .line 125
    const-string v3, "launchBillingFlow failed -> skuDetails is null"

    .line 126
    .line 127
    invoke-virtual {v1, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    sget-object v4, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 131
    .line 132
    iget-object v5, v0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->i:Ljava/lang/String;

    .line 133
    .line 134
    iget-object v8, v0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->a:Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 135
    .line 136
    sget-object v1, Lad/k;->a:Lad/k$a;

    .line 137
    .line 138
    invoke-virtual {v1}, Lad/k$a;->a()I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v9

    .line 146
    const/4 v11, 0x4

    .line 147
    const/4 v12, 0x0

    .line 148
    const/4 v7, 0x0

    .line 149
    const-string v10, "SkuDetails is null"

    .line 150
    .line 151
    move-object/from16 v6, p2

    .line 152
    .line 153
    invoke-static/range {v4 .. v12}, Lcom/startshorts/androidplayer/manager/event/EventManager;->K0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    invoke-direct/range {p0 .. p1}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->N(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;)V

    .line 157
    .line 158
    .line 159
    :goto_0
    return-void
.end method

.method private final v(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->B()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    invoke-direct/range {p0 .. p1}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->N(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;)V

    .line 12
    .line 13
    .line 14
    goto/16 :goto_0

    .line 15
    .line 16
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuDetails()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 23
    .line 24
    new-instance v5, Landroid/os/Bundle;

    .line 25
    .line 26
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v3, "amount"

    .line 30
    .line 31
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getPayAmount()F

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    invoke-virtual {v5, v3, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 36
    .line 37
    .line 38
    const-string/jumbo v3, "sku"

    .line 39
    .line 40
    .line 41
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v5, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v3, "product_id"

    .line 49
    .line 50
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getProductId()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v5, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string v3, "scene"

    .line 58
    .line 59
    iget-object v4, v0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->i:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v5, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 65
    .line 66
    const/4 v8, 0x4

    .line 67
    const/4 v9, 0x0

    .line 68
    const-string/jumbo v4, "win_product_create_order"

    .line 69
    .line 70
    .line 71
    const-wide/16 v6, 0x0

    .line 72
    .line 73
    move-object v3, v2

    .line 74
    invoke-static/range {v3 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    iget-object v4, v0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->i:Ljava/lang/String;

    .line 78
    .line 79
    iget-object v7, v0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->a:Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 80
    .line 81
    const/16 v15, 0x7f4

    .line 82
    .line 83
    const/16 v16, 0x0

    .line 84
    .line 85
    const/4 v6, 0x0

    .line 86
    const/4 v8, 0x0

    .line 87
    const/4 v10, 0x0

    .line 88
    const/4 v11, 0x0

    .line 89
    const/4 v12, 0x0

    .line 90
    const/4 v13, 0x0

    .line 91
    const/4 v14, 0x0

    .line 92
    move-object/from16 v5, p2

    .line 93
    .line 94
    invoke-static/range {v3 .. v16}, Lcom/startshorts/androidplayer/manager/event/EventManager;->G0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    iget-object v2, v0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->i:Ljava/lang/String;

    .line 98
    .line 99
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->t()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    iget-object v7, v0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->a:Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 104
    .line 105
    const/16 v13, 0x7d0

    .line 106
    .line 107
    const/4 v8, 0x0

    .line 108
    const/4 v9, 0x0

    .line 109
    move-object/from16 v3, p1

    .line 110
    .line 111
    invoke-static/range {v1 .. v14}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->N(Lcom/startshorts/androidplayer/repo/billing/BillingRepo;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;ILzc/k;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;ILjava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_1
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 116
    .line 117
    const-string v2, "ActPaymentDelegate"

    .line 118
    .line 119
    const-string v3, "launchBillingFlow failed -> skuDetails is null"

    .line 120
    .line 121
    invoke-virtual {v1, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    sget-object v4, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 125
    .line 126
    iget-object v5, v0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->i:Ljava/lang/String;

    .line 127
    .line 128
    iget-object v8, v0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->a:Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 129
    .line 130
    sget-object v1, Lad/k;->a:Lad/k$a;

    .line 131
    .line 132
    invoke-virtual {v1}, Lad/k$a;->a()I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v10

    .line 140
    const/16 v12, 0x10

    .line 141
    .line 142
    const/4 v13, 0x0

    .line 143
    const/4 v7, 0x0

    .line 144
    const/4 v9, 0x0

    .line 145
    const-string v11, "SkuDetails is null"

    .line 146
    .line 147
    move-object/from16 v6, p2

    .line 148
    .line 149
    invoke-static/range {v4 .. v13}, Lcom/startshorts/androidplayer/manager/event/EventManager;->L0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    invoke-direct/range {p0 .. p1}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->N(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;)V

    .line 153
    .line 154
    .line 155
    :goto_0
    return-void
.end method

.method private final w()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->b:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method

.method private final x()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->c:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    return-object v0
.end method

.method private final y(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Ljava/util/List;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->j:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_34

    .line 6
    .line 7
    iput-boolean v1, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->j:Z

    .line 8
    .line 9
    move-object p1, p2

    .line 10
    check-cast p1, Ljava/util/Collection;

    .line 11
    .line 12
    if-eqz p1, :cond_32

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    goto/16 :goto_14

    .line 21
    .line 22
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    move-object p3, p2

    .line 28
    check-cast p3, Ljava/lang/Iterable;

    .line 29
    .line 30
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const-string v1, ""

    .line 39
    .line 40
    if-eqz v0, :cond_31

    .line 41
    .line 42
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v3, "null cannot be cast to non-null type com.shorttv.aar.billing.bean.CommonProductDetails"

    .line 47
    .line 48
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    check-cast v0, Lzc/e;

    .line 52
    .line 53
    invoke-virtual {v0}, Lzc/e;->a()Lcom/shorttv/aar/billing/bean/ProductDataType;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    sget-object v4, Lcom/shorttv/aar/billing/bean/ProductDataType;->GOOGLE_SKU:Lcom/shorttv/aar/billing/bean/ProductDataType;

    .line 58
    .line 59
    const/4 v5, 0x0

    .line 60
    const-wide/16 v6, 0x0

    .line 61
    .line 62
    if-ne v3, v4, :cond_f

    .line 63
    .line 64
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->l:Ljava/util/List;

    .line 65
    .line 66
    if-eqz v3, :cond_1

    .line 67
    .line 68
    check-cast v3, Ljava/lang/Iterable;

    .line 69
    .line 70
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_3

    .line 79
    .line 80
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    move-object v8, v4

    .line 85
    check-cast v8, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;

    .line 86
    .line 87
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->getSkuId()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    invoke-virtual {v0}, Lzc/e;->d()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v9

    .line 95
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v8

    .line 99
    if-eqz v8, :cond_2

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_3
    move-object v4, v2

    .line 103
    :goto_1
    check-cast v4, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;

    .line 104
    .line 105
    if-eqz v4, :cond_1

    .line 106
    .line 107
    invoke-static {v4, p2}, Ljk/u;->i(Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;Ljava/util/List;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->isSubscription()Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-eqz v3, :cond_c

    .line 115
    .line 116
    invoke-static {v0}, Ljk/k;->g(Lzc/e;)Lcom/startshorts/androidplayer/bean/subs/SubsFormattedPrice;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-static {v0}, Ljk/k;->k(Lzc/e;)Lcom/startshorts/androidplayer/bean/subs/SubsPrice;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->enableDiscount()Z

    .line 125
    .line 126
    .line 127
    move-result v8

    .line 128
    if-eqz v8, :cond_5

    .line 129
    .line 130
    if-eqz v3, :cond_4

    .line 131
    .line 132
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/subs/SubsFormattedPrice;->getDiscountPrice()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v8

    .line 136
    if-nez v8, :cond_6

    .line 137
    .line 138
    :cond_4
    :goto_2
    move-object v8, v1

    .line 139
    goto :goto_3

    .line 140
    :cond_5
    if-eqz v3, :cond_4

    .line 141
    .line 142
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/subs/SubsFormattedPrice;->getOriginPrice()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v8

    .line 146
    if-nez v8, :cond_6

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_6
    :goto_3
    if-eqz v3, :cond_8

    .line 150
    .line 151
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/subs/SubsFormattedPrice;->getOriginPrice()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    if-nez v3, :cond_7

    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_7
    move-object v1, v3

    .line 159
    :cond_8
    :goto_4
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->getDiscount()F

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    cmpg-float v3, v3, v5

    .line 164
    .line 165
    if-nez v3, :cond_9

    .line 166
    .line 167
    new-instance v0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceResult;

    .line 168
    .line 169
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->getSkuId()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    invoke-direct {v0, v3, v8, v8, v1}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    goto/16 :goto_0

    .line 180
    .line 181
    :cond_9
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->enableDiscount()Z

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    if-eqz v3, :cond_a

    .line 186
    .line 187
    if-eqz v0, :cond_b

    .line 188
    .line 189
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->getDiscountPriceAmountMicros()J

    .line 190
    .line 191
    .line 192
    move-result-wide v6

    .line 193
    goto :goto_5

    .line 194
    :cond_a
    if-eqz v0, :cond_b

    .line 195
    .line 196
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->getOriginPriceAmountMicros()J

    .line 197
    .line 198
    .line 199
    move-result-wide v6

    .line 200
    :cond_b
    :goto_5
    sget-object v0, Lcom/startshorts/androidplayer/utils/BillingUtil;->a:Lcom/startshorts/androidplayer/utils/BillingUtil;

    .line 201
    .line 202
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->getDiscount()F

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    invoke-virtual {v0, v6, v7, v3, v8}, Lcom/startshorts/androidplayer/utils/BillingUtil;->b(JFLjava/lang/String;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    new-instance v3, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceResult;

    .line 211
    .line 212
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->getSkuId()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    invoke-direct {v3, v4, v0, v8, v1}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    goto/16 :goto_0

    .line 223
    .line 224
    :cond_c
    invoke-static {v0}, Ljk/k;->c(Lzc/e;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->getDiscount()F

    .line 229
    .line 230
    .line 231
    move-result v8

    .line 232
    cmpg-float v5, v8, v5

    .line 233
    .line 234
    if-nez v5, :cond_d

    .line 235
    .line 236
    new-instance v0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceResult;

    .line 237
    .line 238
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->getSkuId()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    invoke-direct {v0, v4, v3, v3, v1}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    goto/16 :goto_0

    .line 249
    .line 250
    :cond_d
    sget-object v5, Lcom/startshorts/androidplayer/utils/BillingUtil;->a:Lcom/startshorts/androidplayer/utils/BillingUtil;

    .line 251
    .line 252
    invoke-virtual {v0}, Lzc/e;->b()Lzc/e$a;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    if-eqz v0, :cond_e

    .line 257
    .line 258
    invoke-virtual {v0}, Lzc/e$a;->b()J

    .line 259
    .line 260
    .line 261
    move-result-wide v6

    .line 262
    :cond_e
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->getDiscount()F

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    invoke-virtual {v5, v6, v7, v0, v3}, Lcom/startshorts/androidplayer/utils/BillingUtil;->b(JFLjava/lang/String;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    new-instance v5, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceResult;

    .line 271
    .line 272
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->getSkuId()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v4

    .line 276
    invoke-direct {v5, v4, v0, v3, v1}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    goto/16 :goto_0

    .line 283
    .line 284
    :cond_f
    sget-object v4, Lcom/shorttv/aar/billing/bean/ProductDataType;->GOOGLE_PRODUCT:Lcom/shorttv/aar/billing/bean/ProductDataType;

    .line 285
    .line 286
    if-ne v3, v4, :cond_20

    .line 287
    .line 288
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->l:Ljava/util/List;

    .line 289
    .line 290
    if-eqz v3, :cond_1

    .line 291
    .line 292
    check-cast v3, Ljava/lang/Iterable;

    .line 293
    .line 294
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 295
    .line 296
    .line 297
    move-result-object v3

    .line 298
    :cond_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 299
    .line 300
    .line 301
    move-result v4

    .line 302
    if-eqz v4, :cond_11

    .line 303
    .line 304
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v4

    .line 308
    move-object v8, v4

    .line 309
    check-cast v8, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;

    .line 310
    .line 311
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->getSkuId()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v8

    .line 315
    invoke-virtual {v0}, Lzc/e;->d()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v9

    .line 319
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    move-result v8

    .line 323
    if-eqz v8, :cond_10

    .line 324
    .line 325
    goto :goto_6

    .line 326
    :cond_11
    move-object v4, v2

    .line 327
    :goto_6
    check-cast v4, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;

    .line 328
    .line 329
    if-eqz v4, :cond_1

    .line 330
    .line 331
    invoke-static {v4, p2}, Ljk/u;->i(Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;Ljava/util/List;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->isSubscription()Z

    .line 335
    .line 336
    .line 337
    move-result v3

    .line 338
    if-eqz v3, :cond_1d

    .line 339
    .line 340
    invoke-static {v0}, Ljk/k;->f(Lzc/e;)Lcom/startshorts/androidplayer/bean/subs/SubsFormattedPrice;

    .line 341
    .line 342
    .line 343
    move-result-object v3

    .line 344
    invoke-static {v0}, Ljk/k;->j(Lzc/e;)Lcom/startshorts/androidplayer/bean/subs/SubsPrice;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->enableDiscount()Z

    .line 349
    .line 350
    .line 351
    move-result v8

    .line 352
    if-eqz v8, :cond_13

    .line 353
    .line 354
    if-eqz v3, :cond_12

    .line 355
    .line 356
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/subs/SubsFormattedPrice;->getDiscountPrice()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v8

    .line 360
    goto :goto_7

    .line 361
    :cond_12
    move-object v8, v2

    .line 362
    goto :goto_7

    .line 363
    :cond_13
    if-eqz v3, :cond_12

    .line 364
    .line 365
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/subs/SubsFormattedPrice;->getOriginPrice()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v8

    .line 369
    :goto_7
    if-eqz v3, :cond_14

    .line 370
    .line 371
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/subs/SubsFormattedPrice;->getOriginPrice()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v3

    .line 375
    if-nez v3, :cond_15

    .line 376
    .line 377
    :cond_14
    move-object v3, v1

    .line 378
    :cond_15
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->getDiscount()F

    .line 379
    .line 380
    .line 381
    move-result v9

    .line 382
    cmpg-float v5, v9, v5

    .line 383
    .line 384
    if-nez v5, :cond_18

    .line 385
    .line 386
    new-instance v0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceResult;

    .line 387
    .line 388
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->getSkuId()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v4

    .line 392
    if-nez v8, :cond_16

    .line 393
    .line 394
    move-object v5, v1

    .line 395
    goto :goto_8

    .line 396
    :cond_16
    move-object v5, v8

    .line 397
    :goto_8
    if-nez v8, :cond_17

    .line 398
    .line 399
    goto :goto_9

    .line 400
    :cond_17
    move-object v1, v8

    .line 401
    :goto_9
    invoke-direct {v0, v4, v5, v1, v3}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    goto/16 :goto_0

    .line 408
    .line 409
    :cond_18
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->enableDiscount()Z

    .line 410
    .line 411
    .line 412
    move-result v5

    .line 413
    if-eqz v5, :cond_19

    .line 414
    .line 415
    if-eqz v0, :cond_1a

    .line 416
    .line 417
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->getDiscountPriceAmountMicros()J

    .line 418
    .line 419
    .line 420
    move-result-wide v6

    .line 421
    goto :goto_a

    .line 422
    :cond_19
    if-eqz v0, :cond_1a

    .line 423
    .line 424
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->getOriginPriceAmountMicros()J

    .line 425
    .line 426
    .line 427
    move-result-wide v6

    .line 428
    :cond_1a
    :goto_a
    sget-object v0, Lcom/startshorts/androidplayer/utils/BillingUtil;->a:Lcom/startshorts/androidplayer/utils/BillingUtil;

    .line 429
    .line 430
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->getDiscount()F

    .line 431
    .line 432
    .line 433
    move-result v5

    .line 434
    if-nez v8, :cond_1b

    .line 435
    .line 436
    move-object v9, v1

    .line 437
    goto :goto_b

    .line 438
    :cond_1b
    move-object v9, v8

    .line 439
    :goto_b
    invoke-virtual {v0, v6, v7, v5, v9}, Lcom/startshorts/androidplayer/utils/BillingUtil;->b(JFLjava/lang/String;)Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    new-instance v5, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceResult;

    .line 444
    .line 445
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->getSkuId()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v4

    .line 449
    if-nez v8, :cond_1c

    .line 450
    .line 451
    goto :goto_c

    .line 452
    :cond_1c
    move-object v1, v8

    .line 453
    :goto_c
    invoke-direct {v5, v4, v0, v1, v3}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    .line 458
    .line 459
    goto/16 :goto_0

    .line 460
    .line 461
    :cond_1d
    invoke-static {v0}, Ljk/k;->c(Lzc/e;)Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v3

    .line 465
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->getDiscount()F

    .line 466
    .line 467
    .line 468
    move-result v8

    .line 469
    cmpg-float v5, v8, v5

    .line 470
    .line 471
    if-nez v5, :cond_1e

    .line 472
    .line 473
    new-instance v0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceResult;

    .line 474
    .line 475
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->getSkuId()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v4

    .line 479
    invoke-direct {v0, v4, v3, v3, v1}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    .line 484
    .line 485
    goto/16 :goto_0

    .line 486
    .line 487
    :cond_1e
    sget-object v5, Lcom/startshorts/androidplayer/utils/BillingUtil;->a:Lcom/startshorts/androidplayer/utils/BillingUtil;

    .line 488
    .line 489
    invoke-virtual {v0}, Lzc/e;->b()Lzc/e$a;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    if-eqz v0, :cond_1f

    .line 494
    .line 495
    invoke-virtual {v0}, Lzc/e$a;->b()J

    .line 496
    .line 497
    .line 498
    move-result-wide v6

    .line 499
    :cond_1f
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->getDiscount()F

    .line 500
    .line 501
    .line 502
    move-result v0

    .line 503
    invoke-virtual {v5, v6, v7, v0, v3}, Lcom/startshorts/androidplayer/utils/BillingUtil;->b(JFLjava/lang/String;)Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v0

    .line 507
    new-instance v5, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceResult;

    .line 508
    .line 509
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->getSkuId()Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v4

    .line 513
    invoke-direct {v5, v4, v0, v3, v1}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    .line 518
    .line 519
    goto/16 :goto_0

    .line 520
    .line 521
    :cond_20
    sget-object v4, Lcom/shorttv/aar/billing/bean/ProductDataType;->HUAWEI_SKU:Lcom/shorttv/aar/billing/bean/ProductDataType;

    .line 522
    .line 523
    if-ne v3, v4, :cond_1

    .line 524
    .line 525
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->l:Ljava/util/List;

    .line 526
    .line 527
    if-eqz v3, :cond_1

    .line 528
    .line 529
    check-cast v3, Ljava/lang/Iterable;

    .line 530
    .line 531
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 532
    .line 533
    .line 534
    move-result-object v3

    .line 535
    :cond_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 536
    .line 537
    .line 538
    move-result v4

    .line 539
    if-eqz v4, :cond_22

    .line 540
    .line 541
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    move-result-object v4

    .line 545
    move-object v8, v4

    .line 546
    check-cast v8, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;

    .line 547
    .line 548
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->getSkuId()Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v8

    .line 552
    invoke-virtual {v0}, Lzc/e;->d()Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v9

    .line 556
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 557
    .line 558
    .line 559
    move-result v8

    .line 560
    if-eqz v8, :cond_21

    .line 561
    .line 562
    goto :goto_d

    .line 563
    :cond_22
    move-object v4, v2

    .line 564
    :goto_d
    check-cast v4, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;

    .line 565
    .line 566
    if-eqz v4, :cond_1

    .line 567
    .line 568
    invoke-static {v4, p2}, Ljk/u;->i(Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;Ljava/util/List;)V

    .line 569
    .line 570
    .line 571
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->isSubscription()Z

    .line 572
    .line 573
    .line 574
    move-result v3

    .line 575
    if-eqz v3, :cond_2e

    .line 576
    .line 577
    invoke-static {v0}, Ljk/k;->e(Lzc/e;)Lcom/startshorts/androidplayer/bean/subs/SubsFormattedPrice;

    .line 578
    .line 579
    .line 580
    move-result-object v3

    .line 581
    invoke-static {v0}, Ljk/k;->j(Lzc/e;)Lcom/startshorts/androidplayer/bean/subs/SubsPrice;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->enableDiscount()Z

    .line 586
    .line 587
    .line 588
    move-result v8

    .line 589
    if-eqz v8, :cond_24

    .line 590
    .line 591
    if-eqz v3, :cond_23

    .line 592
    .line 593
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/subs/SubsFormattedPrice;->getDiscountPrice()Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v8

    .line 597
    goto :goto_e

    .line 598
    :cond_23
    move-object v8, v2

    .line 599
    goto :goto_e

    .line 600
    :cond_24
    if-eqz v3, :cond_23

    .line 601
    .line 602
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/subs/SubsFormattedPrice;->getOriginPrice()Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v8

    .line 606
    :goto_e
    if-eqz v3, :cond_25

    .line 607
    .line 608
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/subs/SubsFormattedPrice;->getOriginPrice()Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v3

    .line 612
    if-nez v3, :cond_26

    .line 613
    .line 614
    :cond_25
    move-object v3, v1

    .line 615
    :cond_26
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->getDiscount()F

    .line 616
    .line 617
    .line 618
    move-result v9

    .line 619
    cmpg-float v5, v9, v5

    .line 620
    .line 621
    if-nez v5, :cond_29

    .line 622
    .line 623
    new-instance v0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceResult;

    .line 624
    .line 625
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->getSkuId()Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    move-result-object v4

    .line 629
    if-nez v8, :cond_27

    .line 630
    .line 631
    move-object v5, v1

    .line 632
    goto :goto_f

    .line 633
    :cond_27
    move-object v5, v8

    .line 634
    :goto_f
    if-nez v8, :cond_28

    .line 635
    .line 636
    goto :goto_10

    .line 637
    :cond_28
    move-object v1, v8

    .line 638
    :goto_10
    invoke-direct {v0, v4, v5, v1, v3}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    .line 640
    .line 641
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    .line 643
    .line 644
    goto/16 :goto_0

    .line 645
    .line 646
    :cond_29
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->enableDiscount()Z

    .line 647
    .line 648
    .line 649
    move-result v5

    .line 650
    if-eqz v5, :cond_2a

    .line 651
    .line 652
    if-eqz v0, :cond_2b

    .line 653
    .line 654
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->getDiscountPriceAmountMicros()J

    .line 655
    .line 656
    .line 657
    move-result-wide v6

    .line 658
    goto :goto_11

    .line 659
    :cond_2a
    if-eqz v0, :cond_2b

    .line 660
    .line 661
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->getOriginPriceAmountMicros()J

    .line 662
    .line 663
    .line 664
    move-result-wide v6

    .line 665
    :cond_2b
    :goto_11
    sget-object v0, Lcom/startshorts/androidplayer/utils/BillingUtil;->a:Lcom/startshorts/androidplayer/utils/BillingUtil;

    .line 666
    .line 667
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->getDiscount()F

    .line 668
    .line 669
    .line 670
    move-result v5

    .line 671
    if-nez v8, :cond_2c

    .line 672
    .line 673
    move-object v9, v1

    .line 674
    goto :goto_12

    .line 675
    :cond_2c
    move-object v9, v8

    .line 676
    :goto_12
    invoke-virtual {v0, v6, v7, v5, v9}, Lcom/startshorts/androidplayer/utils/BillingUtil;->b(JFLjava/lang/String;)Ljava/lang/String;

    .line 677
    .line 678
    .line 679
    move-result-object v0

    .line 680
    new-instance v5, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceResult;

    .line 681
    .line 682
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->getSkuId()Ljava/lang/String;

    .line 683
    .line 684
    .line 685
    move-result-object v4

    .line 686
    if-nez v8, :cond_2d

    .line 687
    .line 688
    goto :goto_13

    .line 689
    :cond_2d
    move-object v1, v8

    .line 690
    :goto_13
    invoke-direct {v5, v4, v0, v1, v3}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    .line 692
    .line 693
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 694
    .line 695
    .line 696
    goto/16 :goto_0

    .line 697
    .line 698
    :cond_2e
    invoke-static {v0}, Ljk/k;->c(Lzc/e;)Ljava/lang/String;

    .line 699
    .line 700
    .line 701
    move-result-object v3

    .line 702
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->getDiscount()F

    .line 703
    .line 704
    .line 705
    move-result v8

    .line 706
    cmpg-float v5, v8, v5

    .line 707
    .line 708
    if-nez v5, :cond_2f

    .line 709
    .line 710
    new-instance v0, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceResult;

    .line 711
    .line 712
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->getSkuId()Ljava/lang/String;

    .line 713
    .line 714
    .line 715
    move-result-object v4

    .line 716
    invoke-direct {v0, v4, v3, v3, v1}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    .line 718
    .line 719
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 720
    .line 721
    .line 722
    goto/16 :goto_0

    .line 723
    .line 724
    :cond_2f
    sget-object v5, Lcom/startshorts/androidplayer/utils/BillingUtil;->a:Lcom/startshorts/androidplayer/utils/BillingUtil;

    .line 725
    .line 726
    invoke-virtual {v0}, Lzc/e;->b()Lzc/e$a;

    .line 727
    .line 728
    .line 729
    move-result-object v0

    .line 730
    if-eqz v0, :cond_30

    .line 731
    .line 732
    invoke-virtual {v0}, Lzc/e$a;->b()J

    .line 733
    .line 734
    .line 735
    move-result-wide v6

    .line 736
    :cond_30
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->getDiscount()F

    .line 737
    .line 738
    .line 739
    move-result v0

    .line 740
    invoke-virtual {v5, v6, v7, v0, v3}, Lcom/startshorts/androidplayer/utils/BillingUtil;->b(JFLjava/lang/String;)Ljava/lang/String;

    .line 741
    .line 742
    .line 743
    move-result-object v0

    .line 744
    new-instance v5, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceResult;

    .line 745
    .line 746
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;->getSkuId()Ljava/lang/String;

    .line 747
    .line 748
    .line 749
    move-result-object v4

    .line 750
    invoke-direct {v5, v4, v0, v3, v1}, Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    .line 752
    .line 753
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 754
    .line 755
    .line 756
    goto/16 :goto_0

    .line 757
    .line 758
    :cond_31
    iget-object p2, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->m:Lat/n;

    .line 759
    .line 760
    if-eqz p2, :cond_33

    .line 761
    .line 762
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 763
    .line 764
    invoke-interface {p2, p3, p1, v1}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    .line 766
    .line 767
    goto :goto_15

    .line 768
    :cond_32
    :goto_14
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->m:Lat/n;

    .line 769
    .line 770
    if-eqz p1, :cond_33

    .line 771
    .line 772
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 773
    .line 774
    invoke-interface {p1, p2, v2, p3}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    .line 776
    .line 777
    :cond_33
    :goto_15
    iput-object v2, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->k:Ljava/lang/String;

    .line 778
    .line 779
    iput-object v2, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->l:Ljava/util/List;

    .line 780
    .line 781
    iput-object v2, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->m:Lat/n;

    .line 782
    .line 783
    goto :goto_16

    .line 784
    :cond_34
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->z()V

    .line 785
    .line 786
    .line 787
    iget-object p3, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->e:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 788
    .line 789
    if-eqz p3, :cond_35

    .line 790
    .line 791
    const/4 v0, 0x2

    .line 792
    invoke-static {p3, p2, v1, v0, v2}, Ljk/u;->l(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Ljava/util/List;ZILjava/lang/Object;)V

    .line 793
    .line 794
    .line 795
    invoke-direct {p0, p1, p3}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->u(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V

    .line 796
    .line 797
    .line 798
    :cond_35
    iget-object p3, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->f:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 799
    .line 800
    if-eqz p3, :cond_36

    .line 801
    .line 802
    invoke-static {p3, p2}, Ljk/u;->k(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/util/List;)V

    .line 803
    .line 804
    .line 805
    invoke-direct {p0, p1, p3}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->v(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 806
    .line 807
    .line 808
    :cond_36
    :goto_16
    return-void
.end method

.method private final z()V
    .locals 2

    .line 1
    sget-object v0, Lfk/h0;->a:Lfk/h0;

    .line 2
    .line 3
    new-instance v1, Lle/a;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lle/a;-><init>(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lfk/h0;->e(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final F(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;",
            "Lcom/startshorts/androidplayer/bean/purchase/CoinSku;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "coinSku"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "scene"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "onPayResult"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iput-object p3, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->i:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->e:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 24
    .line 25
    const/4 p3, 0x0

    .line 26
    iput-object p3, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->f:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 27
    .line 28
    iput-object p4, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->g:Lkotlin/jvm/functions/Function2;

    .line 29
    .line 30
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->P(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    iget-boolean p3, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->h:Z

    .line 34
    .line 35
    const-string p4, "ActPaymentDelegate"

    .line 36
    .line 37
    if-nez p3, :cond_0

    .line 38
    .line 39
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 40
    .line 41
    const-string p3, "connect pay manager"

    .line 42
    .line 43
    invoke-virtual {p2, p4, p3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->s(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 51
    .line 52
    new-instance p3, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v0, "pay manager init succeed, start gPay -> "

    .line 58
    .line 59
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-virtual {p1, p4, p2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->K()V

    .line 73
    .line 74
    .line 75
    :goto_0
    return-void
.end method

.method public final G(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "subsSku"

    .line 7
    .line 8
    .line 9
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "scene"

    .line 13
    .line 14
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "onPayResult"

    .line 18
    .line 19
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iput-object p3, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->i:Ljava/lang/String;

    .line 23
    .line 24
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->f:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 25
    .line 26
    const/4 p2, 0x0

    .line 27
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->e:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 28
    .line 29
    iput-object p4, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->g:Lkotlin/jvm/functions/Function2;

    .line 30
    .line 31
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->P(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    iget-boolean p2, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->h:Z

    .line 35
    .line 36
    const-string p3, "ActPaymentDelegate"

    .line 37
    .line 38
    if-nez p2, :cond_0

    .line 39
    .line 40
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 41
    .line 42
    const-string p4, "connect pay manager"

    .line 43
    .line 44
    invoke-virtual {p2, p3, p4}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->s(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 52
    .line 53
    new-instance p2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string p4, "pay manager init succeed, start gPay -> "

    .line 59
    .line 60
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-object p4, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->f:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 64
    .line 65
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {p1, p3, p2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->K()V

    .line 76
    .line 77
    .line 78
    :goto_0
    return-void
.end method

.method public final H(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "eventScene"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->P(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    sget-object v1, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 15
    .line 16
    new-instance v5, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$queryNotAcknowledgedPurchases$1;

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    invoke-direct {v5, p0, p2, p1}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$queryNotAcknowledgedPurchases$1;-><init>(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;Ljava/lang/String;Lrs/c;)V

    .line 20
    .line 21
    .line 22
    new-instance v6, Lle/f;

    .line 23
    .line 24
    invoke-direct {v6, p0}, Lle/f;-><init>(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;)V

    .line 25
    .line 26
    .line 27
    const/4 v7, 0x5

    .line 28
    const/4 v8, 0x0

    .line 29
    const/4 v2, 0x0

    .line 30
    const-string v3, "queryNotAcknowledgedPurchases"

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-static/range {v1 .. v8}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->k(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Lgt/g0;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final J(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Ljava/lang/String;Ljava/util/List;Lat/n;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceSku;",
            ">;",
            "Lat/n<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/purchase/ActQueryPriceResult;",
            ">;-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "queryPriceRequestId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string/jumbo v0, "skus"

    .line 12
    .line 13
    .line 14
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "onQueryResult"

    .line 18
    .line 19
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->j:Z

    .line 24
    .line 25
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->k:Ljava/lang/String;

    .line 26
    .line 27
    iput-object p3, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->l:Ljava/util/List;

    .line 28
    .line 29
    iput-object p4, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->m:Lat/n;

    .line 30
    .line 31
    iget-boolean p2, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->h:Z

    .line 32
    .line 33
    const-string p4, "ActPaymentDelegate"

    .line 34
    .line 35
    if-nez p2, :cond_0

    .line 36
    .line 37
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 38
    .line 39
    const-string p3, "connect pay manager"

    .line 40
    .line 41
    invoke-virtual {p2, p4, p3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->s(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 49
    .line 50
    new-instance p2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v0, "pay manager init succeed, start queryPriceFromGoogle -> "

    .line 56
    .line 57
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p1, p4, p2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-direct {p0, p3}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->L(Ljava/util/List;)V

    .line 71
    .line 72
    .line 73
    :goto_0
    return-void
.end method

.method public final M()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->h:Z

    .line 3
    .line 4
    sget-object v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->w()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->f0(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->w()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->g0(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->z()V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    iput-object v1, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->g:Lkotlin/jvm/functions/Function2;

    .line 25
    .line 26
    iput-object v1, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->e:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 27
    .line 28
    iput-object v1, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->f:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->j:Z

    .line 31
    .line 32
    iput-object v1, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->k:Ljava/lang/String;

    .line 33
    .line 34
    iput-object v1, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->l:Ljava/util/List;

    .line 35
    .line 36
    iput-object v1, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->m:Lat/n;

    .line 37
    .line 38
    return-void
.end method
