.class public Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final kkU:Lcom/bytedance/sdk/openadsdk/QSm/cFZ$oJ;


# instance fields
.field private final BTZ:Landroid/app/Activity;

.field private final HL:Lcom/bytedance/sdk/openadsdk/BTZ/Pfn;

.field private Id:Lcom/bytedance/sdk/openadsdk/QSm/so;

.field Pfn:I

.field private final PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private QSm:Z

.field private RZ:Lcom/bytedance/sdk/openadsdk/core/widget/kkU;

.field private Ry:I

.field private final WcQ:Ljava/lang/String;

.field private Xe:Z

.field ZYk:Z

.field private final awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

.field ba:I

.field cFZ:I

.field private cY:Z

.field private volatile dLZ:Z

.field private final eZI:Landroid/os/Handler;

.field ex:J

.field private jFA:Z

.field private volatile jr:Z

.field protected final oJ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private oq:Lcom/bytedance/sdk/component/utils/HomeWatcherReceiver;

.field private si:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

.field private so:Z

.field tB:Z

.field private tb:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->kkU:Lcom/bytedance/sdk/openadsdk/QSm/cFZ$oJ;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->so:Z

    .line 6
    .line 7
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->oJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    new-instance v1, Landroid/os/Handler;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->eZI:Landroid/os/Handler;

    .line 21
    .line 22
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->ZYk:Z

    .line 23
    .line 24
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->tB:Z

    .line 25
    .line 26
    const-wide/16 v3, 0x0

    .line 27
    .line 28
    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->ex:J

    .line 29
    .line 30
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->Pfn:I

    .line 31
    .line 32
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->ba:I

    .line 33
    .line 34
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->cFZ:I

    .line 35
    .line 36
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->Ry:I

    .line 37
    .line 38
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->QSm:Z

    .line 39
    .line 40
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA$8;

    .line 41
    .line 42
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA$8;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->HL:Lcom/bytedance/sdk/openadsdk/BTZ/Pfn;

    .line 46
    .line 47
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 48
    .line 49
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 50
    .line 51
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->BTZ:Landroid/app/Activity;

    .line 52
    .line 53
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Pfn:Ljava/lang/String;

    .line 54
    .line 55
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->WcQ:Ljava/lang/String;

    .line 56
    .line 57
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 58
    .line 59
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 60
    .line 61
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->cFZ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->so:Z

    .line 66
    .line 67
    return-void
.end method

.method private Id()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->RZ:Lcom/bytedance/sdk/openadsdk/core/widget/kkU;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->bbM()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->si(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->RZ:Lcom/bytedance/sdk/openadsdk/core/widget/kkU;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 26
    .line 27
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->Ry:I

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/kkU;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;I)V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    return v0

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->RZ:Lcom/bytedance/sdk/openadsdk/core/widget/kkU;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/kkU;->tB()V

    .line 37
    .line 38
    .line 39
    return v1
.end method

.method static synthetic Pfn(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->WcQ:Ljava/lang/String;

    return-object p0
.end method

.method private static QSm()Lcom/bytedance/sdk/openadsdk/QSm/ex;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/ZYk;->ba()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    const/4 v1, -0x1

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    sparse-switch v2, :sswitch_data_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :sswitch_0
    const-string v2, "wifi"

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v1, 0x4

    .line 27
    goto :goto_0

    .line 28
    :sswitch_1
    const-string v2, "5g"

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v1, 0x3

    .line 38
    goto :goto_0

    .line 39
    :sswitch_2
    const-string v2, "4g"

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const/4 v1, 0x2

    .line 49
    goto :goto_0

    .line 50
    :sswitch_3
    const-string v2, "3g"

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_3

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    const/4 v1, 0x1

    .line 60
    goto :goto_0

    .line 61
    :sswitch_4
    const-string v2, "2g"

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_4

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    const/4 v1, 0x0

    .line 71
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 72
    .line 73
    .line 74
    sget-object v0, Lcom/bytedance/sdk/openadsdk/QSm/ex;->cFZ:Lcom/bytedance/sdk/openadsdk/QSm/ex;

    .line 75
    .line 76
    return-object v0

    .line 77
    :pswitch_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/QSm/ex;->Pfn:Lcom/bytedance/sdk/openadsdk/QSm/ex;

    .line 78
    .line 79
    return-object v0

    .line 80
    :pswitch_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/QSm/ex;->ex:Lcom/bytedance/sdk/openadsdk/QSm/ex;

    .line 81
    .line 82
    return-object v0

    .line 83
    :pswitch_2
    sget-object v0, Lcom/bytedance/sdk/openadsdk/QSm/ex;->tB:Lcom/bytedance/sdk/openadsdk/QSm/ex;

    .line 84
    .line 85
    return-object v0

    .line 86
    :pswitch_3
    sget-object v0, Lcom/bytedance/sdk/openadsdk/QSm/ex;->ZYk:Lcom/bytedance/sdk/openadsdk/QSm/ex;

    .line 87
    .line 88
    return-object v0

    .line 89
    :pswitch_4
    sget-object v0, Lcom/bytedance/sdk/openadsdk/QSm/ex;->oJ:Lcom/bytedance/sdk/openadsdk/QSm/ex;

    .line 90
    .line 91
    return-object v0

    .line 92
    nop

    .line 93
    :sswitch_data_0
    .sparse-switch
        0x675 -> :sswitch_4
        0x694 -> :sswitch_3
        0x6b3 -> :sswitch_2
        0x6d2 -> :sswitch_1
        0x37af15 -> :sswitch_0
    .end sparse-switch

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic RZ()Lcom/bytedance/sdk/openadsdk/QSm/ex;
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->QSm()Lcom/bytedance/sdk/openadsdk/QSm/ex;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->eZI:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic ba(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->QSm:Z

    return p0
.end method

.method private cY()Ljava/lang/String;
    .locals 13

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->cY()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_3

    .line 14
    .line 15
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Wd()Lcom/bytedance/sdk/openadsdk/core/model/ba;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    goto/16 :goto_2

    .line 24
    .line 25
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Wd()Lcom/bytedance/sdk/openadsdk/core/model/ba;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/ba;->ZYk()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Wd()Lcom/bytedance/sdk/openadsdk/core/model/ba;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/ba;->ex()D

    .line 42
    .line 43
    .line 44
    move-result-wide v2

    .line 45
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 46
    .line 47
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Wd()Lcom/bytedance/sdk/openadsdk/core/model/ba;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/ba;->Pfn()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 56
    .line 57
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Zjw()Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    if-eqz v5, :cond_1

    .line 62
    .line 63
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 64
    .line 65
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Zjw()Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->oJ()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-nez v5, :cond_1

    .line 78
    .line 79
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 80
    .line 81
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Zjw()Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->oJ()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    goto :goto_0

    .line 90
    :cond_1
    const-string v5, ""

    .line 91
    .line 92
    :goto_0
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 93
    .line 94
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->edj()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 99
    .line 100
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Wd()Lcom/bytedance/sdk/openadsdk/core/model/ba;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/model/ba;->tB()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 109
    .line 110
    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Wd()Lcom/bytedance/sdk/openadsdk/core/model/ba;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/model/ba;->oJ()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 119
    .line 120
    invoke-virtual {v9}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Wd()Lcom/bytedance/sdk/openadsdk/core/model/ba;

    .line 121
    .line 122
    .line 123
    move-result-object v9

    .line 124
    invoke-virtual {v9}, Lcom/bytedance/sdk/openadsdk/core/model/ba;->ZYk()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v9

    .line 128
    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 129
    .line 130
    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->UUI()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v10

    .line 134
    new-instance v11, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    const-string v12, "appname="

    .line 140
    .line 141
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v1, "&stars="

    .line 152
    .line 153
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string v1, "&comments="

    .line 160
    .line 161
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string v1, "&icon="

    .line 168
    .line 169
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-static {v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v1, "&downloading=true&id="

    .line 180
    .line 181
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-static {v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v1, "&packageName="

    .line 192
    .line 193
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-static {v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string v1, "&downloadUrl="

    .line 204
    .line 205
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-static {v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    const-string v1, "&name="

    .line 216
    .line 217
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-static {v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const-string v1, "&orientation="

    .line 228
    .line 229
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->Ry:I

    .line 233
    .line 234
    const/4 v2, 0x1

    .line 235
    if-ne v1, v2, :cond_2

    .line 236
    .line 237
    const-string v1, "portrait"

    .line 238
    .line 239
    goto :goto_1

    .line 240
    :cond_2
    const-string v1, "landscape"

    .line 241
    .line 242
    :goto_1
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const-string v1, "&apptitle="

    .line 246
    .line 247
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-static {v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    const-string v0, "?"

    .line 266
    .line 267
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    :cond_3
    :goto_2
    return-object v0
.end method

.method static synthetic ex(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    return-object p0
.end method

.method public static oJ(II)Landroid/os/Message;
    .locals 2

    .line 3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x320

    .line 4
    iput v1, v0, Landroid/os/Message;->what:I

    .line 5
    iput p0, v0, Landroid/os/Message;->arg1:I

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    .line 6
    iput p1, v0, Landroid/os/Message;->arg2:I

    :cond_0
    return-object v0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;)Lcom/bytedance/sdk/openadsdk/core/widget/kkU;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->RZ:Lcom/bytedance/sdk/openadsdk/core/widget/kkU;

    return-object p0
.end method

.method private oJ(Landroid/content/Context;)V
    .locals 2

    .line 73
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->so:Z

    if-nez v0, :cond_0

    return-void

    .line 74
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->oq:Lcom/bytedance/sdk/component/utils/HomeWatcherReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/HomeWatcherReceiver;->oJ(Lcom/bytedance/sdk/component/utils/HomeWatcherReceiver$oJ;)V

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->oq:Lcom/bytedance/sdk/component/utils/HomeWatcherReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->QSm:Z

    return p1
.end method

.method private oq()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->so:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->wd:Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;

    .line 9
    .line 10
    sget v1, Lcom/bytedance/sdk/openadsdk/utils/eZI;->Zwf:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/widget/kkU;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->RZ:Lcom/bytedance/sdk/openadsdk/core/widget/kkU;

    .line 19
    .line 20
    return-void
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    return-object p0
.end method


# virtual methods
.method public BTZ()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->so:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->Id:Lcom/bytedance/sdk/openadsdk/QSm/so;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/QSm/so;->tB(Z)Lcom/bytedance/sdk/openadsdk/QSm/so;

    .line 12
    .line 13
    .line 14
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->eZI:Landroid/os/Handler;

    .line 15
    .line 16
    const/16 v1, 0x384

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public Pfn()V
    .locals 4

    .line 2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->so:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->ex:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->ex:J

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->eZI:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->jFA()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x384

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->tB(Z)V

    return-void
.end method

.method public Pfn(I)V
    .locals 0

    .line 7
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->Pfn:I

    return-void
.end method

.method public Pfn(Z)V
    .locals 1

    .line 8
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->so:Z

    if-nez v0, :cond_0

    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->Id:Lcom/bytedance/sdk/openadsdk/QSm/so;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/QSm/so;->oJ(Z)Lcom/bytedance/sdk/openadsdk/QSm/so;

    :cond_1
    return-void
.end method

.method public PiB()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->so:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->eZI:Landroid/os/Handler;

    .line 7
    .line 8
    const/16 v1, 0x384

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->eZI:Landroid/os/Handler;

    .line 14
    .line 15
    const/16 v1, 0x258

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public Ry()Lcom/bytedance/sdk/openadsdk/QSm/so;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->Id:Lcom/bytedance/sdk/openadsdk/QSm/so;

    .line 2
    .line 3
    return-object v0
.end method

.method public WcQ()Lcom/bytedance/sdk/openadsdk/BTZ/Pfn;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->HL:Lcom/bytedance/sdk/openadsdk/BTZ/Pfn;

    .line 2
    .line 3
    return-object v0
.end method

.method public ZYk()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->so:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->oJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->si:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->mu()V

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->so(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->si:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->cFZ()V

    :cond_2
    return-void
.end method

.method public ZYk(I)V
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->so:Z

    if-nez v0, :cond_0

    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->RZ:Lcom/bytedance/sdk/openadsdk/core/widget/kkU;

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/cFZ;->setProgress(I)V

    :cond_1
    return-void
.end method

.method public ZYk(Ljava/lang/String;)V
    .locals 3

    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->Id:Lcom/bytedance/sdk/openadsdk/QSm/so;

    if-eqz v0, :cond_1

    .line 16
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->so:Z

    if-nez v1, :cond_0

    return-void

    .line 17
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;->oJ()Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/QSm/so;->ba(Z)V

    .line 18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->Id:Lcom/bytedance/sdk/openadsdk/QSm/so;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/QSm/so;->jFA(Ljava/lang/String;)V

    .line 19
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 20
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Pfn(Z)V

    .line 21
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->nke:Lcom/bytedance/sdk/openadsdk/BTZ/jFA;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/BTZ/jFA;->oJ(Z)V

    .line 22
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iput-boolean v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    :cond_2
    return-void
.end method

.method public ZYk(Z)V
    .locals 4

    .line 7
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->so:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->si:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Xe()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->si:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->cY()I

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/awB/tB;->oJ()Lcom/bytedance/sdk/openadsdk/awB/tB;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->si:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Xe()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->si:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->cY()I

    move-result v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->si:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->jr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/awB/tB;->oJ(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    if-eqz p1, :cond_2

    .line 10
    :try_start_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->si:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Xe()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 11
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/awB/tB;->oJ()Lcom/bytedance/sdk/openadsdk/awB/tB;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->si:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Xe()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/awB/tB;->ZYk(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    nop

    :catchall_1
    :cond_2
    return-void
.end method

.method public awB()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->jr:Z

    .line 2
    .line 3
    return v0
.end method

.method public ba()V
    .locals 5

    .line 2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->so:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->so(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->RZ:Lcom/bytedance/sdk/openadsdk/core/widget/kkU;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->jXJ:Lcom/bytedance/sdk/openadsdk/utils/WcQ;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->jFA()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/WcQ;->oJ(J)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->Ry(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->RZ:Lcom/bytedance/sdk/openadsdk/core/widget/kkU;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->XAo:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->UK:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->RZ:Lcom/bytedance/sdk/openadsdk/core/widget/kkU;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/kkU;->tB()V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->oJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ofl()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->Id:Lcom/bytedance/sdk/openadsdk/QSm/so;

    if-eqz v0, :cond_5

    .line 11
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/QSm/so;->oJ(I)V

    .line 12
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->cFZ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->Id(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ofl()Z

    move-result v0

    if-nez v0, :cond_b

    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Ry()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x2

    goto :goto_0

    :cond_6
    const/4 v0, 0x3

    .line 15
    :goto_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->Id:Lcom/bytedance/sdk/openadsdk/QSm/so;

    if-eqz v2, :cond_7

    .line 16
    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/QSm/so;->oJ(I)V

    .line 17
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->si(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ba:I

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->kO()Z

    move-result v3

    invoke-virtual {p0, v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->oJ(ILcom/bytedance/sdk/openadsdk/core/model/cY;Z)V

    .line 19
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->Pfn()V

    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cdg:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;->eZI()V

    .line 21
    :cond_8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->XAo:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ(Z)V

    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->XAo()V

    .line 23
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->jr:Z

    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->tB(Z)V

    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->Pfn(Z)V

    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iput-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->Ry(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->eZI:Landroid/os/Handler;

    const/16 v3, 0x384

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 29
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->ex(Z)V

    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jm:Lcom/bytedance/sdk/component/utils/IUZ;

    if-eqz v0, :cond_9

    .line 31
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jm:Lcom/bytedance/sdk/component/utils/IUZ;

    const/16 v2, 0x258

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 33
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->Id:Lcom/bytedance/sdk/openadsdk/QSm/so;

    if-eqz v0, :cond_a

    .line 34
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/QSm/so;->tB(Z)Lcom/bytedance/sdk/openadsdk/QSm/so;

    :cond_a
    return-void

    .line 35
    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->XAo:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->UK:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;)V

    :cond_c
    return-void
.end method

.method public ba(Z)V
    .locals 5

    .line 36
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->so:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_5

    .line 37
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->cFZ()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 38
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->Id:Lcom/bytedance/sdk/openadsdk/QSm/so;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 39
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/QSm/so;->oJ(I)V

    .line 40
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->si(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 41
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->Id(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 42
    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->bbM()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 43
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->awB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 44
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->eZI:Landroid/os/Handler;

    const/16 v2, 0x320

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4
    if-eqz p1, :cond_5

    .line 45
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->so()V

    .line 46
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ZYk(Z)V

    .line 47
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->tB(Z)V

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->WcQ:Ljava/lang/String;

    const-string v3, "py_loading_success"

    invoke-static {v0, v1, p1, v2, v3}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public cFZ()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->so:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->RZ:Lcom/bytedance/sdk/openadsdk/core/widget/kkU;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->RZ:Lcom/bytedance/sdk/openadsdk/core/widget/kkU;

    .line 16
    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 20
    .line 21
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->Ry:I

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/kkU;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->kkU()Lcom/bytedance/sdk/component/jFA/ba;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->kkU()Lcom/bytedance/sdk/component/jFA/ba;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/jFA/ba;->getProgress()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/4 v0, 0x0

    .line 50
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->RZ:Lcom/bytedance/sdk/openadsdk/core/widget/kkU;

    .line 51
    .line 52
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/cFZ;->setProgress(I)V

    .line 53
    .line 54
    .line 55
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->Id:Lcom/bytedance/sdk/openadsdk/QSm/so;

    .line 56
    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/QSm/so;->LpP()V

    .line 60
    .line 61
    .line 62
    :cond_4
    return-void
.end method

.method public dLZ()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->so:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->Id:Lcom/bytedance/sdk/openadsdk/QSm/so;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->kkU()Lcom/bytedance/sdk/component/jFA/ba;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ex(Landroid/view/View;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->Id:Lcom/bytedance/sdk/openadsdk/QSm/so;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/QSm/so;->tB(Z)Lcom/bytedance/sdk/openadsdk/QSm/so;

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public eZI()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->Xe:Z

    .line 2
    .line 3
    return v0
.end method

.method public ex()V
    .locals 3

    .line 2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->so:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/component/utils/HomeWatcherReceiver;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/utils/HomeWatcherReceiver;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->oq:Lcom/bytedance/sdk/component/utils/HomeWatcherReceiver;

    .line 4
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA$7;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA$7;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/utils/HomeWatcherReceiver;->oJ(Lcom/bytedance/sdk/component/utils/HomeWatcherReceiver$oJ;)V

    .line 5
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->BTZ:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->oq:Lcom/bytedance/sdk/component/utils/HomeWatcherReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public ex(I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    .line 7
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->Pfn:I

    return-void
.end method

.method public ex(Z)V
    .locals 1

    .line 8
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->so:Z

    if-nez v0, :cond_0

    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->Id:Lcom/bytedance/sdk/openadsdk/QSm/so;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/QSm/so;->tB(Z)Lcom/bytedance/sdk/openadsdk/QSm/so;

    :cond_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 9

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/16 v2, 0x384

    .line 5
    .line 6
    if-ne v0, v2, :cond_9

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->dLZ:Z

    .line 9
    .line 10
    if-eqz v0, :cond_8

    .line 11
    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->si(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto/16 :goto_3

    .line 23
    .line 24
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 25
    .line 26
    if-lez p1, :cond_4

    .line 27
    .line 28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->ex(Z)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ZYk(I)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-ne v0, p1, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    .line 48
    .line 49
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    const/4 v4, 0x0

    .line 54
    invoke-virtual {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    if-lez v0, :cond_2

    .line 59
    .line 60
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 61
    .line 62
    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    .line 63
    .line 64
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 69
    .line 70
    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 71
    .line 72
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    const-string v6, "tt_skip_ad_time_text"

    .line 77
    .line 78
    invoke-static {v5, v6}, Lcom/bytedance/sdk/component/utils/cY;->oJ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v3, v4, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 99
    .line 100
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->so(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_3

    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB()Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-nez v0, :cond_3

    .line 111
    .line 112
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 113
    .line 114
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    .line 115
    .line 116
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 121
    .line 122
    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 123
    .line 124
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    const-string v5, "tt_reward_screen_skip_tx"

    .line 129
    .line 130
    invoke-static {v4, v5}, Lcom/bytedance/sdk/component/utils/cY;->oJ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    invoke-virtual {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 138
    .line 139
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->Pfn(Z)V

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 146
    .line 147
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->RZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 153
    .line 154
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->UK:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 155
    .line 156
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->awB()V

    .line 157
    .line 158
    .line 159
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    iput v2, v0, Landroid/os/Message;->what:I

    .line 164
    .line 165
    add-int/lit8 v2, p1, -0x1

    .line 166
    .line 167
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 168
    .line 169
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->eZI:Landroid/os/Handler;

    .line 170
    .line 171
    const-wide/16 v3, 0x3e8

    .line 172
    .line 173
    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->ex(I)V

    .line 177
    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 181
    .line 182
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->so(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    if-eqz p1, :cond_6

    .line 187
    .line 188
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 189
    .line 190
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->Id(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    if-eqz p1, :cond_5

    .line 195
    .line 196
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 197
    .line 198
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    .line 199
    .line 200
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->cFZ()Z

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    if-nez p1, :cond_6

    .line 205
    .line 206
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 207
    .line 208
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    .line 209
    .line 210
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->tB()V

    .line 211
    .line 212
    .line 213
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 214
    .line 215
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    .line 216
    .line 217
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->Pfn(Z)V

    .line 218
    .line 219
    .line 220
    goto :goto_1

    .line 221
    :cond_6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 222
    .line 223
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    .line 224
    .line 225
    const/4 v0, 0x0

    .line 226
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->ex(Z)V

    .line 227
    .line 228
    .line 229
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 230
    .line 231
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->RZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 232
    .line 233
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 234
    .line 235
    .line 236
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 237
    .line 238
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->UK:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 239
    .line 240
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->awB()V

    .line 241
    .line 242
    .line 243
    :goto_1
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->jFA:Z

    .line 244
    .line 245
    if-nez p1, :cond_7

    .line 246
    .line 247
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->Xe:Z

    .line 248
    .line 249
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 250
    .line 251
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cdg:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

    .line 252
    .line 253
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;->RZ()V

    .line 254
    .line 255
    .line 256
    goto/16 :goto_8

    .line 257
    .line 258
    :cond_8
    :goto_3
    return v1

    .line 259
    :cond_9
    const/16 v2, 0x320

    .line 260
    .line 261
    if-ne v0, v2, :cond_f

    .line 262
    .line 263
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->RZ:Lcom/bytedance/sdk/openadsdk/core/widget/kkU;

    .line 264
    .line 265
    if-eqz v0, :cond_b

    .line 266
    .line 267
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    if-eqz v0, :cond_a

    .line 272
    .line 273
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->RZ:Lcom/bytedance/sdk/openadsdk/core/widget/kkU;

    .line 274
    .line 275
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/kkU;->ex()Z

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    if-eqz v0, :cond_b

    .line 280
    .line 281
    :cond_a
    return v1

    .line 282
    :cond_b
    new-instance v6, Lorg/json/JSONObject;

    .line 283
    .line 284
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 285
    .line 286
    .line 287
    const-wide/16 v3, 0x0

    .line 288
    .line 289
    :try_start_0
    const-string v0, "remove_loading_page_type"

    .line 290
    .line 291
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 292
    .line 293
    invoke-virtual {v6, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 294
    .line 295
    .line 296
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 297
    .line 298
    if-eqz p1, :cond_c

    .line 299
    .line 300
    const-string v0, "remove_loading_page_reason"

    .line 301
    .line 302
    invoke-virtual {v6, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 303
    .line 304
    .line 305
    goto :goto_4

    .line 306
    :catch_0
    move-exception p1

    .line 307
    goto :goto_6

    .line 308
    :cond_c
    :goto_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 309
    .line 310
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->BTZ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 315
    .line 316
    if-eqz v0, :cond_d

    .line 317
    .line 318
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 319
    .line 320
    if-eqz v0, :cond_d

    .line 321
    .line 322
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Xe()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 327
    .line 328
    .line 329
    move-result v5

    .line 330
    if-nez v5, :cond_d

    .line 331
    .line 332
    move-object p1, v0

    .line 333
    :cond_d
    const-string v0, "playable_url"

    .line 334
    .line 335
    invoke-virtual {v6, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 336
    .line 337
    .line 338
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->RZ:Lcom/bytedance/sdk/openadsdk/core/widget/kkU;

    .line 339
    .line 340
    if-eqz p1, :cond_e

    .line 341
    .line 342
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/kkU;->getDisplayDuration()J

    .line 343
    .line 344
    .line 345
    move-result-wide v3

    .line 346
    :cond_e
    const-string p1, "duration"

    .line 347
    .line 348
    invoke-virtual {v6, p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    .line 350
    .line 351
    :goto_5
    move-wide v7, v3

    .line 352
    goto :goto_7

    .line 353
    :goto_6
    const-string v0, "TTAD.RFPM"

    .line 354
    .line 355
    const-string v5, "handleMessage json error"

    .line 356
    .line 357
    invoke-static {v0, v5, p1}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 358
    .line 359
    .line 360
    goto :goto_5

    .line 361
    :goto_7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 362
    .line 363
    iget-object v3, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 364
    .line 365
    iget-object v4, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Pfn:Ljava/lang/String;

    .line 366
    .line 367
    const-string v5, "remove_loading_page"

    .line 368
    .line 369
    invoke-static/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;J)V

    .line 370
    .line 371
    .line 372
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->eZI:Landroid/os/Handler;

    .line 373
    .line 374
    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 375
    .line 376
    .line 377
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->BTZ:Landroid/app/Activity;

    .line 378
    .line 379
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    .line 380
    .line 381
    .line 382
    move-result p1

    .line 383
    if-nez p1, :cond_f

    .line 384
    .line 385
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 386
    .line 387
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    .line 388
    .line 389
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->Pfn()V

    .line 390
    .line 391
    .line 392
    :cond_f
    :goto_8
    return v1
.end method

.method public jFA()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->ba:I

    .line 2
    .line 3
    return v0
.end method

.method public kkU()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->Pfn:I

    .line 2
    .line 3
    return v0
.end method

.method public oJ()V
    .locals 6

    .line 13
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->so:Z

    if-nez v0, :cond_0

    return-void

    .line 14
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->cY:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->cY:Z

    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->si:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 17
    iget v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oTd:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->Ry:I

    .line 18
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->oq()V

    .line 19
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->Id()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->si(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->awB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->eZI:Landroid/os/Handler;

    const/16 v1, 0x320

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->oJ(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->RZ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void
.end method

.method public oJ(I)V
    .locals 2

    .line 7
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->so:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->jFA:Z

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->Id(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->eZI:Landroid/os/Handler;

    const/16 v1, 0x384

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jm:Lcom/bytedance/sdk/component/utils/IUZ;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->eZI:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->oJ(II)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public oJ(ILcom/bytedance/sdk/openadsdk/core/model/cY;Z)V
    .locals 1

    .line 95
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->so:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    .line 96
    :cond_1
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->zUb()I

    move-result p2

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->ba:I

    .line 97
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, p3}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->oJ(Ljava/lang/String;Z)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->cFZ:I

    return-void
.end method

.method public oJ(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 98
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->so:Z

    if-nez v0, :cond_0

    return-void

    .line 99
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->Id:Lcom/bytedance/sdk/openadsdk/QSm/so;

    if-eqz v0, :cond_1

    .line 100
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;->oJ()Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/QSm/so;->ba(Z)V

    .line 101
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->Id:Lcom/bytedance/sdk/openadsdk/QSm/so;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/QSm/so;->oJ(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public oJ(J)V
    .locals 2

    .line 106
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->so:Z

    if-nez v0, :cond_0

    return-void

    .line 107
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x384

    .line 108
    iput v1, v0, Landroid/os/Message;->what:I

    .line 109
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->kkU()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 110
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->eZI:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public oJ(Landroid/webkit/DownloadListener;)V
    .locals 10

    .line 62
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->so:Z

    if-nez v0, :cond_0

    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->si:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->dLZ()Lcom/bytedance/sdk/component/jFA/ba;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 64
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->cY()Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 66
    :cond_2
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA$6;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->BTZ:Landroid/app/Activity;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->si:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->PiB()Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object v6

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->edj()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v2

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA$6;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/UN;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ex/BTZ;Z)V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/jFA/ba;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 67
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/jFA/ba;->a_(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 68
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/jFA/ba;->setDisplayZoomControls(Z)V

    .line 69
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/ex;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->si:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->PiB()Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->si:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->WcQ()Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/ex;-><init>(Lcom/bytedance/sdk/openadsdk/core/UN;Lcom/bytedance/sdk/openadsdk/ex/BTZ;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/jFA/ba;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 70
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/jFA/ba;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/BTZ/ba;Z)V
    .locals 6

    .line 23
    const-string v0, "PlayablePlugin_init"

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->so:Z

    if-nez v1, :cond_0

    return-void

    .line 24
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->cFZ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Qu:Z

    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 25
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/jFA;->si()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 26
    sget-object v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->kkU:Lcom/bytedance/sdk/openadsdk/QSm/cFZ$oJ;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/QSm/cFZ;->oJ(Lcom/bytedance/sdk/openadsdk/QSm/cFZ$oJ;)V

    .line 27
    :cond_2
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;Lcom/bytedance/sdk/openadsdk/BTZ/ba;)V

    .line 28
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA$3;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;)V

    .line 29
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const/4 v3, 0x0

    .line 30
    :try_start_0
    const-string v4, "cid"

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->edj()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    const-string v4, "log_extra"

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->pe()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->kkU()Lcom/bytedance/sdk/component/jFA/ba;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    move-result-object v5

    invoke-static {v4, v5, p1, v1}, Lcom/bytedance/sdk/openadsdk/QSm/so;->oJ(Landroid/content/Context;Landroid/webkit/WebView;Lcom/bytedance/sdk/openadsdk/QSm/tB;Lcom/bytedance/sdk/openadsdk/QSm/oJ;)Lcom/bytedance/sdk/openadsdk/QSm/so;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 33
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Xe()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/QSm/so;->cFZ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/QSm/so;

    move-result-object p1

    .line 34
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/common/ZYk;->oJ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/QSm/so;->Pfn(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/QSm/so;

    move-result-object p1

    .line 35
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/ZYk;->oJ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/QSm/so;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/QSm/so;

    move-result-object p1

    .line 36
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/QSm/so;->tB(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/QSm/so;

    move-result-object p1

    const-string v1, "sdkEdition"

    .line 37
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/ZYk;->tB()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/QSm/so;->oJ(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/QSm/so;

    move-result-object p1

    .line 38
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/ZYk;->Pfn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/QSm/so;->ZYk(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/QSm/so;

    move-result-object p1

    .line 39
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/ZYk;->ex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/QSm/so;->ex(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/QSm/so;

    move-result-object p1

    .line 40
    invoke-virtual {p1, v3}, Lcom/bytedance/sdk/openadsdk/QSm/so;->ex(Z)Lcom/bytedance/sdk/openadsdk/QSm/so;

    move-result-object p1

    .line 41
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/QSm/so;->oJ(Z)Lcom/bytedance/sdk/openadsdk/QSm/so;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 42
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->RZ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/QSm/so;->oJ(J)Lcom/bytedance/sdk/openadsdk/QSm/so;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 43
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->RZ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/QSm/so;->ZYk(J)Lcom/bytedance/sdk/openadsdk/QSm/so;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 44
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->si(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/QSm/so;->Pfn(Z)Lcom/bytedance/sdk/openadsdk/QSm/so;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->Id:Lcom/bytedance/sdk/openadsdk/QSm/so;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_4

    .line 45
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA$4;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA$4;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;)V

    :goto_0
    invoke-static {v0, v3, p1}, Lcom/bytedance/sdk/openadsdk/awB/tB;->oJ(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/awB/ZYk;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 46
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->Id:Lcom/bytedance/sdk/openadsdk/QSm/so;

    if-nez p2, :cond_3

    .line 47
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA$4;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA$4;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;)V

    invoke-static {v0, v3, p2}, Lcom/bytedance/sdk/openadsdk/awB/tB;->oJ(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/awB/ZYk;)V

    :cond_3
    throw p1

    .line 48
    :catch_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->Id:Lcom/bytedance/sdk/openadsdk/QSm/so;

    if-nez p1, :cond_4

    .line 49
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA$4;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA$4;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;)V

    goto :goto_0

    .line 50
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->Id:Lcom/bytedance/sdk/openadsdk/QSm/so;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->dLZ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 51
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->Id:Lcom/bytedance/sdk/openadsdk/QSm/so;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->dLZ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/QSm/so;->tB(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/QSm/so;

    .line 52
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->Id:Lcom/bytedance/sdk/openadsdk/QSm/so;

    if-eqz p1, :cond_7

    .line 53
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/QSm/so;->dLZ()Ljava/util/Set;

    move-result-object p1

    .line 54
    new-instance p2, Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->Id:Lcom/bytedance/sdk/openadsdk/QSm/so;

    invoke-direct {p2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 55
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 56
    const-string v1, "subscribe_app_ad"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "adInfo"

    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "webview_time_track"

    .line 58
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "download_app_ad"

    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 60
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->awB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->BTZ()Lcom/bytedance/sdk/openadsdk/core/UN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->ZYk()Lcom/bytedance/sdk/component/oJ/si;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 61
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA$5;

    invoke-direct {v2, p0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA$5;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/sdk/component/oJ/si;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/component/oJ/Pfn;)Lcom/bytedance/sdk/component/oJ/si;

    goto :goto_2

    :cond_7
    :goto_3
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/ZYk/Pfn;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 89
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->so:Z

    if-nez v0, :cond_0

    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->RZ:Lcom/bytedance/sdk/openadsdk/core/widget/kkU;

    if-eqz v0, :cond_2

    .line 91
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/cFZ;->getDownloadButton()Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 92
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->si(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->Id(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->RZ:Lcom/bytedance/sdk/openadsdk/core/widget/kkU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/cFZ;->getDownloadButton()Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->RZ:Lcom/bytedance/sdk/openadsdk/core/widget/kkU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/cFZ;->getDownloadButton()Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    return-void
.end method

.method public oJ(Ljava/lang/String;)V
    .locals 5

    .line 76
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->so:Z

    if-nez v0, :cond_0

    return-void

    .line 77
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->tB:Z

    if-nez v0, :cond_1

    return-void

    .line 78
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->ex:J

    sub-long/2addr v1, v3

    .line 80
    :try_start_0
    const-string v3, "duration"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 81
    const-string v2, "TTAD.RFPM"

    const-string v3, "sendPlayableEvent error"

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->WcQ:Ljava/lang/String;

    invoke-static {v1, v2, p1, v0}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 83
    const-string v0, "return_foreground"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 84
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->tB:Z

    :cond_2
    return-void
.end method

.method public oJ(Lorg/json/JSONObject;)V
    .locals 4

    .line 85
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->so:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->ex:J

    sub-long/2addr v0, v2

    .line 87
    :try_start_0
    const-string v2, "duration"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 88
    const-string v0, "TTAD.RFPM"

    const-string v1, "endShow json error"

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public oJ(Z)V
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->so:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 72
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->si:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->kkU()Lcom/bytedance/sdk/component/jFA/ba;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/jFA/ba;->setDomStorageEnabled(Z)V

    :cond_1
    return-void
.end method

.method public oJ(ZLjava/lang/String;I)V
    .locals 3

    .line 102
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->so:Z

    if-nez v0, :cond_0

    return-void

    .line 103
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->Id:Lcom/bytedance/sdk/openadsdk/QSm/so;

    if-eqz v0, :cond_1

    .line 104
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;->oJ()Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/QSm/so;->ba(Z)V

    .line 105
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->Id:Lcom/bytedance/sdk/openadsdk/QSm/so;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/QSm/so;->oJ(ZLjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public si()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->RZ:Lcom/bytedance/sdk/openadsdk/core/widget/kkU;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public so()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->dLZ:Z

    .line 2
    .line 3
    return v0
.end method

.method public tB(I)I
    .locals 2

    .line 13
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->cFZ:I

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->ba:I

    sub-int/2addr v1, p1

    sub-int/2addr v0, v1

    return v0
.end method

.method public tB()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->so:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->tb:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->tb:Z

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->tB(Z)V

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->BTZ:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->oJ(Landroid/content/Context;)V

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->Id:Lcom/bytedance/sdk/openadsdk/QSm/so;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/QSm/so;->XAo()V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->eZI:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public tB(Ljava/lang/String;)V
    .locals 3

    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->Id:Lcom/bytedance/sdk/openadsdk/QSm/so;

    if-eqz v0, :cond_1

    .line 15
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->so:Z

    if-nez v1, :cond_0

    return-void

    .line 16
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;->oJ()Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->PiB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/QSm/so;->ba(Z)V

    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->Id:Lcom/bytedance/sdk/openadsdk/QSm/so;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/QSm/so;->so(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public tB(Z)V
    .locals 1

    .line 10
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->so:Z

    if-nez v0, :cond_0

    return-void

    .line 11
    :cond_0
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->dLZ:Z

    if-nez p1, :cond_1

    .line 12
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/jFA;->eZI:Landroid/os/Handler;

    const/16 v0, 0x384

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method
