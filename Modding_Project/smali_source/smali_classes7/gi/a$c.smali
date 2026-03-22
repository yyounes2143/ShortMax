.class public final Lgi/a$c;
.super Lyd/d;
.source "BillingUnavailableTipDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgi/a;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lgi/a;


# direct methods
.method constructor <init>(Lgi/a;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lgi/a$c;->e:Lgi/a;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    invoke-direct {p0, v1, v2, p1, v0}, Lyd/d;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 10

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 7
    .line 8
    const/4 v6, 0x6

    .line 9
    const/4 v7, 0x0

    .line 10
    const-string v2, "feedback_click"

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const-wide/16 v4, 0x0

    .line 14
    .line 15
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/log/Logger;->l(Lyd/f;)V

    .line 22
    .line 23
    .line 24
    sget-object p1, Lcom/startshorts/androidplayer/utils/IntentUtil;->a:Lcom/startshorts/androidplayer/utils/IntentUtil;

    .line 25
    .line 26
    iget-object v0, p0, Lgi/a$c;->e:Lgi/a;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "getContext(...)"

    .line 33
    .line 34
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lgi/a$c;->e:Lgi/a;

    .line 38
    .line 39
    sget v2, Lcom/startshorts/androidplayer/R$string;->feedback_email:I

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Lfi/a;->l(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-object v2, p0, Lgi/a$c;->e:Lgi/a;

    .line 46
    .line 47
    sget v3, Lcom/startshorts/androidplayer/R$string;->profile_fragment_feedback:I

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Lfi/a;->l(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    iget-object v3, p0, Lgi/a$c;->e:Lgi/a;

    .line 54
    .line 55
    sget v4, Lcom/startshorts/androidplayer/R$string;->profile_fragment_feedback_content:I

    .line 56
    .line 57
    sget-object v5, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 58
    .line 59
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->t0()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    sget-object v6, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 64
    .line 65
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->V()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    new-instance v8, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v9, "Android-"

    .line 75
    .line 76
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->O()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const/16 v9, 0x2c

    .line 87
    .line 88
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->C()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    filled-new-array {v5, v7, v6}, [Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    invoke-virtual {v3, v4, v5}, Lfi/a;->m(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/startshorts/androidplayer/utils/IntentUtil;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lgi/a$c;->e:Lgi/a;

    .line 114
    .line 115
    invoke-virtual {p1}, Lfi/a;->dismiss()V

    .line 116
    .line 117
    .line 118
    return-void
.end method
