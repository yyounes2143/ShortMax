.class public final Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment$c;
.super Lyd/d;
.source "ProfileLoginGuideDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;->H()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment$c;->e:Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;

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
    .locals 8

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 7
    .line 8
    const/4 v6, 0x6

    .line 9
    const/4 v7, 0x0

    .line 10
    const-string v2, "login_guide_click"

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const-wide/16 v4, 0x0

    .line 14
    .line 15
    move-object v1, p1

    .line 16
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment$c;->e:Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;->F(Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment$c;->e:Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;->D(Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const-string v1, "type"

    .line 31
    .line 32
    const-string v2, "scene"

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    new-instance v3, Landroid/os/Bundle;

    .line 37
    .line 38
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment$c;->e:Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;->E(Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v3, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v0, "google"

    .line 51
    .line 52
    invoke-virtual {v3, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 56
    .line 57
    const/4 v6, 0x4

    .line 58
    const/4 v7, 0x0

    .line 59
    const-string v2, "login_click"

    .line 60
    .line 61
    const-wide/16 v4, 0x0

    .line 62
    .line 63
    move-object v1, p1

    .line 64
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment$c;->e:Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;

    .line 68
    .line 69
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;->C(Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;)Lms/i;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-interface {p1}, Lms/i;->getValue()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 78
    .line 79
    sget-object v0, Lcom/startshorts/androidplayer/bean/auth/AuthReason;->LOGIN:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/manager/auth/a;->b(Lcom/startshorts/androidplayer/bean/auth/AuthReason;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    new-instance v3, Landroid/os/Bundle;

    .line 86
    .line 87
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment$c;->e:Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;

    .line 91
    .line 92
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;->E(Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v3, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const-string v0, "facebook"

    .line 100
    .line 101
    invoke-virtual {v3, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 105
    .line 106
    const/4 v6, 0x4

    .line 107
    const/4 v7, 0x0

    .line 108
    const-string v2, "login_click"

    .line 109
    .line 110
    const-wide/16 v4, 0x0

    .line 111
    .line 112
    move-object v1, p1

    .line 113
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment$c;->e:Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;

    .line 117
    .line 118
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;->C(Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;)Lms/i;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-interface {p1}, Lms/i;->getValue()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    check-cast p1, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 127
    .line 128
    sget-object v0, Lcom/startshorts/androidplayer/bean/auth/AuthReason;->LOGIN:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 129
    .line 130
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/manager/auth/a;->a(Lcom/startshorts/androidplayer/bean/auth/AuthReason;)V

    .line 131
    .line 132
    .line 133
    :goto_0
    return-void
.end method
