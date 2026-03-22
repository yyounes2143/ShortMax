.class public final Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment$a;
.super Ljava/lang/Object;
.source "StateDialogFragment.kt"

# interfaces
.implements Lla/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment;->k(Lcom/hades/aar/pagestate/StateViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment$a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/hades/aar/pagestate/StateViewGroup;

.field final synthetic b:Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment;


# direct methods
.method constructor <init>(Lcom/hades/aar/pagestate/StateViewGroup;Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment$a;->a:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment$a;->b:Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic b(Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment$a;->c(Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final c(Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment;->h()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method


# virtual methods
.method public a(Lcom/hades/aar/pagestate/State;)V
    .locals 2

    .line 1
    const-string v0, "state"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment$a$a;->$EnumSwitchMapping$0:[I

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    aget p1, v0, p1

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eq p1, v0, :cond_6

    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    if-eq p1, v0, :cond_3

    .line 20
    .line 21
    const/4 v0, 0x3

    .line 22
    if-eq p1, v0, :cond_0

    .line 23
    .line 24
    goto/16 :goto_2

    .line 25
    .line 26
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment$a;->a:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 27
    .line 28
    sget-object v0, Lcom/hades/aar/pagestate/State;->OTHER_ERROR:Lcom/hades/aar/pagestate/State;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lcom/hades/aar/pagestate/StateViewGroup;->a(Lcom/hades/aar/pagestate/State;)Ljava/lang/ref/WeakReference;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lla/b;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move-object p1, v1

    .line 44
    :goto_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/ui/view/pagestate/SOtherErrorView;

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    move-object v1, p1

    .line 49
    check-cast v1, Lcom/startshorts/androidplayer/ui/view/pagestate/SOtherErrorView;

    .line 50
    .line 51
    :cond_2
    if-eqz v1, :cond_9

    .line 52
    .line 53
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment$a;->b:Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment;

    .line 54
    .line 55
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment$a$c;

    .line 56
    .line 57
    invoke-direct {v0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment$a$c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/ui/view/pagestate/SOtherErrorView;->setMOnRefreshListener(Lrj/a;)V

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_3
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment$a;->a:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 65
    .line 66
    sget-object v0, Lcom/hades/aar/pagestate/State;->NETWORK_ERROR:Lcom/hades/aar/pagestate/State;

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Lcom/hades/aar/pagestate/StateViewGroup;->a(Lcom/hades/aar/pagestate/State;)Ljava/lang/ref/WeakReference;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-eqz p1, :cond_4

    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Lla/b;

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_4
    move-object p1, v1

    .line 82
    :goto_1
    instance-of v0, p1, Lcom/startshorts/androidplayer/ui/view/pagestate/SNetworkErrorView;

    .line 83
    .line 84
    if-eqz v0, :cond_5

    .line 85
    .line 86
    move-object v1, p1

    .line 87
    check-cast v1, Lcom/startshorts/androidplayer/ui/view/pagestate/SNetworkErrorView;

    .line 88
    .line 89
    :cond_5
    if-eqz v1, :cond_9

    .line 90
    .line 91
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment$a;->b:Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment;

    .line 92
    .line 93
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment$a$b;

    .line 94
    .line 95
    invoke-direct {v0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment$a$b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/ui/view/pagestate/SNetworkErrorView;->setMOnRefreshListener(Lrj/a;)V

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_6
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment$a;->a:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 103
    .line 104
    sget-object v0, Lcom/hades/aar/pagestate/State;->EMPTY:Lcom/hades/aar/pagestate/State;

    .line 105
    .line 106
    invoke-virtual {p1, v0}, Lcom/hades/aar/pagestate/StateViewGroup;->a(Lcom/hades/aar/pagestate/State;)Ljava/lang/ref/WeakReference;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    if-eqz p1, :cond_7

    .line 111
    .line 112
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    move-object v1, p1

    .line 117
    check-cast v1, Lla/b;

    .line 118
    .line 119
    :cond_7
    instance-of p1, v1, Lcom/startshorts/androidplayer/ui/view/pagestate/SEmptyView;

    .line 120
    .line 121
    if-eqz p1, :cond_8

    .line 122
    .line 123
    check-cast v1, Lcom/startshorts/androidplayer/ui/view/pagestate/SEmptyView;

    .line 124
    .line 125
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment$a;->b:Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment;

    .line 126
    .line 127
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment;->f()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/ui/view/pagestate/SEmptyView;->v(Ljava/lang/String;)Lcom/startshorts/androidplayer/ui/view/pagestate/SEmptyView;

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_8
    instance-of p1, v1, Lcom/startshorts/androidplayer/ui/view/pagestate/ImgTextBtnEmptyView;

    .line 136
    .line 137
    if-eqz p1, :cond_9

    .line 138
    .line 139
    check-cast v1, Lcom/startshorts/androidplayer/ui/view/pagestate/ImgTextBtnEmptyView;

    .line 140
    .line 141
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment$a;->b:Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment;

    .line 142
    .line 143
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment;->f()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/ui/view/pagestate/ImgTextBtnEmptyView;->v(Ljava/lang/String;)Lcom/startshorts/androidplayer/ui/view/pagestate/ImgTextBtnEmptyView;

    .line 148
    .line 149
    .line 150
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment$a;->b:Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment;

    .line 151
    .line 152
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/o;

    .line 153
    .line 154
    invoke-direct {v0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/o;-><init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/StateDialogFragment;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/ui/view/pagestate/ImgTextBtnEmptyView;->setEmptyBtnClick(Lkotlin/jvm/functions/Function0;)V

    .line 158
    .line 159
    .line 160
    :cond_9
    :goto_2
    return-void
.end method
