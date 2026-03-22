.class public final Lmi/d;
.super Lfi/a;
.source "UpdateDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmi/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfi/a<",
        "Lcom/startshorts/androidplayer/databinding/DialogUpdateBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final f:Lmi/d$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private d:Z

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lmi/d$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lmi/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lmi/d;->f:Lmi/d$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
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
    invoke-direct {p0, p1}, Lfi/a;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    sget p1, Lcom/startshorts/androidplayer/R$layout;->dialog_update:I

    .line 10
    .line 11
    iput p1, p0, Lmi/d;->e:I

    .line 12
    .line 13
    return-void
.end method

.method private static final A(Lmi/d;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmi/d;->dismiss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic u(Lmi/d;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lmi/d;->A(Lmi/d;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic v(Lmi/d;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lmi/d;->z(Lmi/d;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic w(Lmi/d;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lmi/d;->y(Lmi/d;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final x()V
    .locals 4

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->a:Lcom/startshorts/androidplayer/manager/update/UpdateManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->r()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "goToGooglePlay -> "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    sget-object v1, Lcom/startshorts/androidplayer/repo/update/UpdateRepo;->a:Lcom/startshorts/androidplayer/repo/update/UpdateRepo;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/update/UpdateRepo;->g()Lcom/startshorts/androidplayer/bean/update/UpdateData;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p0, v0}, Lfi/a;->o(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/update/UpdateRepo;->g()Lcom/startshorts/androidplayer/bean/update/UpdateData;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/update/UpdateData;->getStoreLink()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    sget-object v1, Lcom/startshorts/androidplayer/utils/IntentUtil;->a:Lcom/startshorts/androidplayer/utils/IntentUtil;

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const-string v3, "getContext(...)"

    .line 51
    .line 52
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2, v0}, Lcom/startshorts/androidplayer/utils/IntentUtil;->c(Landroid/content/Context;Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void
.end method

.method private static final y(Lmi/d;Landroid/view/View;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    new-instance v2, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object p1, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->a:Lcom/startshorts/androidplayer/manager/update/UpdateManager;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->g()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v3, "type"

    .line 15
    .line 16
    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v1, "action"

    .line 20
    .line 21
    const-string v3, "update"

    .line 22
    .line 23
    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 27
    .line 28
    const/4 v5, 0x4

    .line 29
    const/4 v6, 0x0

    .line 30
    const-string v1, "update_click"

    .line 31
    .line 32
    const-wide/16 v3, 0x0

    .line 33
    .line 34
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lmi/d;->d:Z

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->j()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_0

    .line 45
    .line 46
    invoke-virtual {p0}, Lmi/d;->dismiss()V

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-direct {p0}, Lmi/d;->x()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method private static final z(Lmi/d;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmi/d;->dismiss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lmi/d;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 6
    .line 7
    new-instance v3, Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->a:Lcom/startshorts/androidplayer/manager/update/UpdateManager;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->g()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v2, "type"

    .line 19
    .line 20
    invoke-virtual {v3, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v0, "action"

    .line 24
    .line 25
    const-string v2, "cancel"

    .line 26
    .line 27
    invoke-virtual {v3, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 31
    .line 32
    const/4 v6, 0x4

    .line 33
    const/4 v7, 0x0

    .line 34
    const-string v2, "update_click"

    .line 35
    .line 36
    const-wide/16 v4, 0x0

    .line 37
    .line 38
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    new-instance v1, Lcom/startshorts/androidplayer/bean/eventbus/ShortsResumePlayEvent;

    .line 46
    .line 47
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/eventbus/ShortsResumePlayEvent;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lau/c;->l(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-super {p0}, Lfi/a;->dismiss()V

    .line 54
    .line 55
    .line 56
    sget-object v0, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->a:Lcom/startshorts/androidplayer/manager/update/UpdateManager;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->p()V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lmi/d;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "UpdateDialog"

    .line 2
    .line 3
    return-object v0
.end method

.method public n()I
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sget-object v1, Lfk/z;->a:Lfk/z;

    .line 8
    .line 9
    invoke-virtual {v1}, Lfk/z;->p()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    mul-int/lit8 v1, v1, 0x2

    .line 14
    .line 15
    sub-int/2addr v0, v1

    .line 16
    return v0
.end method

.method public p()V
    .locals 10

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/update/UpdateRepo;->a:Lcom/startshorts/androidplayer/repo/update/UpdateRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/update/UpdateRepo;->g()Lcom/startshorts/androidplayer/bean/update/UpdateData;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lmi/d;->dismiss()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 15
    .line 16
    .line 17
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 18
    .line 19
    new-instance v4, Landroid/os/Bundle;

    .line 20
    .line 21
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 22
    .line 23
    .line 24
    sget-object v9, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->a:Lcom/startshorts/androidplayer/manager/update/UpdateManager;

    .line 25
    .line 26
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->g()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const-string v5, "type"

    .line 31
    .line 32
    invoke-virtual {v4, v5, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 36
    .line 37
    const/4 v7, 0x4

    .line 38
    const/4 v8, 0x0

    .line 39
    const-string v3, "update_show"

    .line 40
    .line 41
    const-wide/16 v5, 0x0

    .line 42
    .line 43
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v3, "showDialog updateData="

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const/16 v3, 0x7d

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {p0, v2}, Lfi/a;->o(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->q()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lfi/a;->i()Landroidx/databinding/ViewDataBinding;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    check-cast v2, Lcom/startshorts/androidplayer/databinding/DialogUpdateBinding;

    .line 79
    .line 80
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/DialogUpdateBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 81
    .line 82
    new-instance v3, Lmi/a;

    .line 83
    .line 84
    invoke-direct {v3, p0}, Lmi/a;-><init>(Lmi/d;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lfi/a;->i()Landroidx/databinding/ViewDataBinding;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    check-cast v2, Lcom/startshorts/androidplayer/databinding/DialogUpdateBinding;

    .line 95
    .line 96
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/DialogUpdateBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 97
    .line 98
    new-instance v3, Lmi/b;

    .line 99
    .line 100
    invoke-direct {v3, p0}, Lmi/b;-><init>(Lmi/d;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lfi/a;->i()Landroidx/databinding/ViewDataBinding;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    check-cast v2, Lcom/startshorts/androidplayer/databinding/DialogUpdateBinding;

    .line 111
    .line 112
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/DialogUpdateBinding;->b:Landroid/widget/ImageView;

    .line 113
    .line 114
    new-instance v3, Lmi/c;

    .line 115
    .line 116
    invoke-direct {v3, p0}, Lmi/c;-><init>(Lmi/d;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Lfi/a;->i()Landroidx/databinding/ViewDataBinding;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    check-cast v2, Lcom/startshorts/androidplayer/databinding/DialogUpdateBinding;

    .line 127
    .line 128
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/DialogUpdateBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/update/UpdateData;->getUpdateRemark()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    .line 136
    .line 137
    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->j()Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-eqz v0, :cond_1

    .line 149
    .line 150
    invoke-virtual {p0}, Lfi/a;->i()Landroidx/databinding/ViewDataBinding;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogUpdateBinding;

    .line 155
    .line 156
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogUpdateBinding;->b:Landroid/widget/ImageView;

    .line 157
    .line 158
    const/16 v2, 0x8

    .line 159
    .line 160
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0}, Lfi/a;->i()Landroidx/databinding/ViewDataBinding;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogUpdateBinding;

    .line 168
    .line 169
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogUpdateBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 170
    .line 171
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 175
    .line 176
    .line 177
    :cond_1
    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    invoke-super {p0}, Lfi/a;->show()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lcom/startshorts/androidplayer/bean/eventbus/ShortsPausePlayEvent;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/eventbus/ShortsPausePlayEvent;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lau/c;->l(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
