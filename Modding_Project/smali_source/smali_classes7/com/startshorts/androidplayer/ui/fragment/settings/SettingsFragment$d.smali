.class public final Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$d;
.super Ljava/lang/Object;
.source "SettingsFragment.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->i0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b<",
        "Lcom/startshorts/androidplayer/bean/settings/AppSettings;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSettingsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$initRecyclerView$1$1\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,413:1\n15#2,9:414\n15#2,9:423\n126#3:432\n153#3,3:433\n126#3:436\n153#3,3:437\n126#3:444\n153#3,3:445\n126#3:448\n153#3,3:449\n37#4:440\n36#4,3:441\n37#4:452\n36#4,3:453\n*S KotlinDebug\n*F\n+ 1 SettingsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$initRecyclerView$1$1\n*L\n133#1:414,9\n142#1:423,9\n208#1:432\n208#1:433,3\n210#1:436\n210#1:437,3\n231#1:444\n231#1:445,3\n232#1:448\n232#1:449,3\n213#1:440\n213#1:441,3\n235#1:452\n235#1:453,3\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic b(Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;Ljava/util/List;Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;Lcom/startshorts/androidplayer/bean/settings/AppSettings;Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$d;->f(Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;Ljava/util/List;Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;Lcom/startshorts/androidplayer/bean/settings/AppSettings;Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;Landroid/content/DialogInterface;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;Ljava/util/List;Lcom/startshorts/androidplayer/bean/settings/AppSettings;Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$d;->e(Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;Ljava/util/List;Lcom/startshorts/androidplayer/bean/settings/AppSettings;Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;Landroid/content/DialogInterface;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final e(Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;Ljava/util/List;Lcom/startshorts/androidplayer/bean/settings/AppSettings;Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-interface {p1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;->setSelectedValue(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;->settingListItemTitle()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p2, p1}, Lcom/startshorts/androidplayer/bean/settings/AppSettings;->setName(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->Z()Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->m()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->Z()Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    if-eqz p2, :cond_0

    .line 38
    .line 39
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;->getAfterNotABSelected()Lkotlin/jvm/functions/Function1;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string p2, "requireContext(...)"

    .line 51
    .line 52
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method private static final f(Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;Ljava/util/List;Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;Lcom/startshorts/androidplayer/bean/settings/AppSettings;Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    invoke-interface {p1, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p5

    .line 5
    check-cast p5, Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p0, p5}, Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;->setSelectedValue(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object p5, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->a:Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;

    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->getAbTestKey()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {p1, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p5, v0, p1}, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->B(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    invoke-virtual {p2, p1}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->setActivated(Z)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->clearFixedABTestValue()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->settingListItemTitle()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p3, p1}, Lcom/startshorts/androidplayer/bean/settings/AppSettings;->setName(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p4}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->Z()Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->m()Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-eqz p1, :cond_0

    .line 50
    .line 51
    invoke-interface {p1, p3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    invoke-virtual {p4}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->Z()Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    if-eqz p3, :cond_0

    .line 60
    .line 61
    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 62
    .line 63
    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;->getAfterSelected()Lkotlin/jvm/functions/Function2;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    const-string p3, "requireContext(...)"

    .line 73
    .line 74
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/startshorts/androidplayer/bean/settings/AppSettings;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$d;->d(Landroid/view/View;Lcom/startshorts/androidplayer/bean/settings/AppSettings;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d(Landroid/view/View;Lcom/startshorts/androidplayer/bean/settings/AppSettings;I)V
    .locals 9

    .line 1
    const-string p3, "v"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "d"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/settings/AppSettings;->getType()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 p3, 0x1

    .line 16
    if-eq p1, p3, :cond_14

    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    if-eq p1, v0, :cond_13

    .line 20
    .line 21
    const/16 v0, 0x4e20

    .line 22
    .line 23
    const/16 v1, 0x3a

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    if-eq p1, v0, :cond_c

    .line 27
    .line 28
    const/16 v0, 0x4e21

    .line 29
    .line 30
    if-eq p1, v0, :cond_6

    .line 31
    .line 32
    const/16 p2, 0x4e23

    .line 33
    .line 34
    const-string v0, "requireContext(...)"

    .line 35
    .line 36
    if-eq p1, p2, :cond_4

    .line 37
    .line 38
    const/16 p2, 0x7530

    .line 39
    .line 40
    if-eq p1, p2, :cond_3

    .line 41
    .line 42
    const/16 p2, 0x7531

    .line 43
    .line 44
    if-eq p1, p2, :cond_2

    .line 45
    .line 46
    const-string p2, "getString(...)"

    .line 47
    .line 48
    packed-switch p1, :pswitch_data_0

    .line 49
    .line 50
    .line 51
    packed-switch p1, :pswitch_data_1

    .line 52
    .line 53
    .line 54
    goto/16 :goto_6

    .line 55
    .line 56
    :pswitch_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    instance-of p2, p1, Landroidx/appcompat/app/AppCompatActivity;

    .line 63
    .line 64
    if-eqz p2, :cond_0

    .line 65
    .line 66
    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    const/4 p1, 0x0

    .line 70
    :goto_0
    if-eqz p1, :cond_15

    .line 71
    .line 72
    sget-object p2, Lcom/startshorts/androidplayer/ui/activity/test/TestActivity;->p:Lcom/startshorts/androidplayer/ui/activity/test/TestActivity$a;

    .line 73
    .line 74
    invoke-virtual {p2, p1}, Lcom/startshorts/androidplayer/ui/activity/test/TestActivity$a;->a(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 75
    .line 76
    .line 77
    goto/16 :goto_6

    .line 78
    .line 79
    :pswitch_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;

    .line 80
    .line 81
    new-instance p2, Landroid/content/Intent;

    .line 82
    .line 83
    iget-object p3, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;

    .line 84
    .line 85
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 86
    .line 87
    .line 88
    move-result-object p3

    .line 89
    const-class v0, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;

    .line 90
    .line 91
    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 95
    .line 96
    .line 97
    goto/16 :goto_6

    .line 98
    .line 99
    :pswitch_2
    div-int/2addr p3, v2

    .line 100
    goto/16 :goto_6

    .line 101
    .line 102
    :pswitch_3
    sget-object p1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 103
    .line 104
    const-string p2, "switch_account"

    .line 105
    .line 106
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->f1(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;

    .line 110
    .line 111
    new-instance p2, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$d$c;

    .line 112
    .line 113
    invoke-direct {p2, p1}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$d$c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;)V

    .line 114
    .line 115
    .line 116
    new-instance p3, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$d$d;

    .line 117
    .line 118
    invoke-direct {p3}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$d$d;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-static {p1, p2, p3}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 122
    .line 123
    .line 124
    goto/16 :goto_6

    .line 125
    .line 126
    :pswitch_4
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;

    .line 127
    .line 128
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    const-string p2, "requireActivity(...)"

    .line 133
    .line 134
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    .line 138
    .line 139
    .line 140
    move-result p2

    .line 141
    sget-object v0, Lud/b;->a:Lud/b;

    .line 142
    .line 143
    invoke-virtual {v0, p2}, Lud/b;->i1(Z)Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    xor-int/lit8 v1, v0, 0x1

    .line 148
    .line 149
    if-nez v0, :cond_1

    .line 150
    .line 151
    if-nez p2, :cond_1

    .line 152
    .line 153
    sget-object p2, Lmk/c;->a:Lmk/c;

    .line 154
    .line 155
    invoke-virtual {p2, p1}, Lmk/c;->f(Landroid/app/Activity;)Z

    .line 156
    .line 157
    .line 158
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;

    .line 159
    .line 160
    invoke-static {p1, p3}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->G0(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;Z)V

    .line 161
    .line 162
    .line 163
    goto/16 :goto_6

    .line 164
    .line 165
    :cond_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;

    .line 166
    .line 167
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->D0(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;)Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    new-instance p2, Lcom/startshorts/androidplayer/viewmodel/settings/a$e;

    .line 172
    .line 173
    invoke-direct {p2, v1}, Lcom/startshorts/androidplayer/viewmodel/settings/a$e;-><init>(Z)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;->G(Lcom/startshorts/androidplayer/viewmodel/settings/a;)V

    .line 177
    .line 178
    .line 179
    goto/16 :goto_6

    .line 180
    .line 181
    :pswitch_5
    sget-object p1, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer;->p:Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$a;

    .line 182
    .line 183
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;

    .line 184
    .line 185
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 186
    .line 187
    .line 188
    move-result-object p2

    .line 189
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    sget-object p3, Lcom/startshorts/androidplayer/ui/fragment/a;->a:Lcom/startshorts/androidplayer/ui/fragment/a;

    .line 193
    .line 194
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/ui/fragment/a;->c()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p3

    .line 198
    new-array v0, v2, [Lcom/startshorts/androidplayer/bean/bundle/IFragmentBundle;

    .line 199
    .line 200
    invoke-virtual {p1, p2, p3, v0}, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$a;->b(Landroid/content/Context;Ljava/lang/String;[Lcom/startshorts/androidplayer/bean/bundle/IFragmentBundle;)V

    .line 201
    .line 202
    .line 203
    goto/16 :goto_6

    .line 204
    .line 205
    :pswitch_6
    sget-object p1, Lcom/startshorts/androidplayer/utils/IntentUtil;->a:Lcom/startshorts/androidplayer/utils/IntentUtil;

    .line 206
    .line 207
    iget-object p3, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;

    .line 208
    .line 209
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 210
    .line 211
    .line 212
    move-result-object p3

    .line 213
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;

    .line 217
    .line 218
    sget v1, Lcom/startshorts/androidplayer/R$string;->policy_user_agreement:I

    .line 219
    .line 220
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1, p3, v0}, Lcom/startshorts/androidplayer/utils/IntentUtil;->c(Landroid/content/Context;Ljava/lang/String;)Z

    .line 228
    .line 229
    .line 230
    goto/16 :goto_6

    .line 231
    .line 232
    :pswitch_7
    sget-object p1, Lcom/startshorts/androidplayer/utils/IntentUtil;->a:Lcom/startshorts/androidplayer/utils/IntentUtil;

    .line 233
    .line 234
    iget-object p3, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;

    .line 235
    .line 236
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 237
    .line 238
    .line 239
    move-result-object p3

    .line 240
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;

    .line 244
    .line 245
    sget v1, Lcom/startshorts/androidplayer/R$string;->policy_private_policy:I

    .line 246
    .line 247
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p1, p3, v0}, Lcom/startshorts/androidplayer/utils/IntentUtil;->c(Landroid/content/Context;Ljava/lang/String;)Z

    .line 255
    .line 256
    .line 257
    goto/16 :goto_6

    .line 258
    .line 259
    :cond_2
    sget-object p1, Lcom/startshorts/androidplayer/ui/fragment/settings/OpenShortByIdDialog;->b:Lcom/startshorts/androidplayer/ui/fragment/settings/OpenShortByIdDialog$a;

    .line 260
    .line 261
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/settings/OpenShortByIdDialog$a;->a()Lcom/startshorts/androidplayer/ui/fragment/settings/OpenShortByIdDialog;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;

    .line 266
    .line 267
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 268
    .line 269
    .line 270
    move-result-object p2

    .line 271
    const-string p3, "setting"

    .line 272
    .line 273
    invoke-virtual {p1, p2, p3}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    goto/16 :goto_6

    .line 277
    .line 278
    :cond_3
    sget-object p1, Lca/k;->a:Lca/k;

    .line 279
    .line 280
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;

    .line 281
    .line 282
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 283
    .line 284
    .line 285
    move-result-object p2

    .line 286
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {p1, p2}, Lca/k;->q(Landroid/content/Context;)V

    .line 290
    .line 291
    .line 292
    goto/16 :goto_6

    .line 293
    .line 294
    :cond_4
    sget-object p1, Lcom/startshorts/androidplayer/db/repository/EventRepository;->b:Lcom/startshorts/androidplayer/db/repository/EventRepository;

    .line 295
    .line 296
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/db/repository/EventRepository;->H()I

    .line 297
    .line 298
    .line 299
    move-result p1

    .line 300
    if-nez p1, :cond_5

    .line 301
    .line 302
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;

    .line 303
    .line 304
    const-string p2, "\u6ca1\u6709\u672a\u4e0a\u62a5\u7684\u4e8b\u4ef6"

    .line 305
    .line 306
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->x(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;

    .line 310
    .line 311
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->D0(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;)Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    new-instance p2, Lcom/startshorts/androidplayer/viewmodel/settings/a$b;

    .line 316
    .line 317
    iget-object p3, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;

    .line 318
    .line 319
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 320
    .line 321
    .line 322
    move-result-object p3

    .line 323
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    invoke-direct {p2, p3}, Lcom/startshorts/androidplayer/viewmodel/settings/a$b;-><init>(Landroid/content/Context;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;->G(Lcom/startshorts/androidplayer/viewmodel/settings/a;)V

    .line 330
    .line 331
    .line 332
    return-void

    .line 333
    :cond_5
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;

    .line 334
    .line 335
    invoke-static {p1, v2}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->H0(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;I)V

    .line 336
    .line 337
    .line 338
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;

    .line 339
    .line 340
    invoke-static {p1, v2}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->F0(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;I)V

    .line 341
    .line 342
    .line 343
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;

    .line 344
    .line 345
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->B0(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;)V

    .line 346
    .line 347
    .line 348
    goto/16 :goto_6

    .line 349
    .line 350
    :cond_6
    sget-object p1, Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory;->INSTANCE:Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory;

    .line 351
    .line 352
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/settings/AppSettings;->getAbTestKey()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object p3

    .line 356
    invoke-virtual {p1, p3}, Lcom/startshorts/androidplayer/bean/configure/tester/TesterConfigFactory;->getConfigByTitle(Ljava/lang/String;)Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;

    .line 357
    .line 358
    .line 359
    move-result-object p1

    .line 360
    if-nez p1, :cond_7

    .line 361
    .line 362
    return-void

    .line 363
    :cond_7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;->getOptions()Ljava/util/Map;

    .line 364
    .line 365
    .line 366
    move-result-object p3

    .line 367
    if-eqz p3, :cond_8

    .line 368
    .line 369
    new-instance v0, Ljava/util/ArrayList;

    .line 370
    .line 371
    invoke-interface {p3}, Ljava/util/Map;->size()I

    .line 372
    .line 373
    .line 374
    move-result v3

    .line 375
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 376
    .line 377
    .line 378
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 379
    .line 380
    .line 381
    move-result-object p3

    .line 382
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 383
    .line 384
    .line 385
    move-result-object p3

    .line 386
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 387
    .line 388
    .line 389
    move-result v3

    .line 390
    if-eqz v3, :cond_9

    .line 391
    .line 392
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v3

    .line 396
    check-cast v3, Ljava/util/Map$Entry;

    .line 397
    .line 398
    new-instance v4, Ljava/lang/StringBuilder;

    .line 399
    .line 400
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    .line 402
    .line 403
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v5

    .line 407
    check-cast v5, Ljava/lang/String;

    .line 408
    .line 409
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v3

    .line 419
    check-cast v3, Ljava/lang/String;

    .line 420
    .line 421
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v3

    .line 428
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 429
    .line 430
    .line 431
    goto :goto_1

    .line 432
    :cond_8
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    :cond_9
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;->getOptions()Ljava/util/Map;

    .line 437
    .line 438
    .line 439
    move-result-object p3

    .line 440
    if-eqz p3, :cond_a

    .line 441
    .line 442
    new-instance v1, Ljava/util/ArrayList;

    .line 443
    .line 444
    invoke-interface {p3}, Ljava/util/Map;->size()I

    .line 445
    .line 446
    .line 447
    move-result v3

    .line 448
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 449
    .line 450
    .line 451
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 452
    .line 453
    .line 454
    move-result-object p3

    .line 455
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 456
    .line 457
    .line 458
    move-result-object p3

    .line 459
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 460
    .line 461
    .line 462
    move-result v3

    .line 463
    if-eqz v3, :cond_b

    .line 464
    .line 465
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object v3

    .line 469
    check-cast v3, Ljava/util/Map$Entry;

    .line 470
    .line 471
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 472
    .line 473
    .line 474
    move-result-object v3

    .line 475
    check-cast v3, Ljava/lang/String;

    .line 476
    .line 477
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 478
    .line 479
    .line 480
    goto :goto_2

    .line 481
    :cond_a
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 482
    .line 483
    .line 484
    move-result-object v1

    .line 485
    :cond_b
    new-instance p3, Landroid/app/AlertDialog$Builder;

    .line 486
    .line 487
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;

    .line 488
    .line 489
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 490
    .line 491
    .line 492
    move-result-object v3

    .line 493
    invoke-direct {p3, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;->settingDialogTitle()Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v3

    .line 500
    invoke-virtual {p3, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 501
    .line 502
    .line 503
    move-result-object p3

    .line 504
    check-cast v0, Ljava/util/Collection;

    .line 505
    .line 506
    new-array v2, v2, [Ljava/lang/String;

    .line 507
    .line 508
    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    check-cast v0, [Ljava/lang/CharSequence;

    .line 513
    .line 514
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;

    .line 515
    .line 516
    new-instance v3, Lwi/u;

    .line 517
    .line 518
    invoke-direct {v3, p1, v1, p2, v2}, Lwi/u;-><init>(Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;Ljava/util/List;Lcom/startshorts/androidplayer/bean/settings/AppSettings;Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;)V

    .line 519
    .line 520
    .line 521
    invoke-virtual {p3, v0, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 522
    .line 523
    .line 524
    move-result-object p1

    .line 525
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 526
    .line 527
    .line 528
    goto/16 :goto_6

    .line 529
    .line 530
    :cond_c
    sget-object p1, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 531
    .line 532
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/settings/AppSettings;->getAbTestKey()Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object p3

    .line 536
    invoke-virtual {p1, p3}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->H0(Ljava/lang/String;)Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 537
    .line 538
    .line 539
    move-result-object v6

    .line 540
    if-nez v6, :cond_d

    .line 541
    .line 542
    return-void

    .line 543
    :cond_d
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->getOptionsForTester()Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;

    .line 544
    .line 545
    .line 546
    move-result-object v4

    .line 547
    if-nez v4, :cond_e

    .line 548
    .line 549
    return-void

    .line 550
    :cond_e
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;->getOptions()Ljava/util/Map;

    .line 551
    .line 552
    .line 553
    move-result-object p1

    .line 554
    if-eqz p1, :cond_f

    .line 555
    .line 556
    new-instance p3, Ljava/util/ArrayList;

    .line 557
    .line 558
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 559
    .line 560
    .line 561
    move-result v0

    .line 562
    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 563
    .line 564
    .line 565
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 566
    .line 567
    .line 568
    move-result-object p1

    .line 569
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 570
    .line 571
    .line 572
    move-result-object p1

    .line 573
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 574
    .line 575
    .line 576
    move-result v0

    .line 577
    if-eqz v0, :cond_10

    .line 578
    .line 579
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 580
    .line 581
    .line 582
    move-result-object v0

    .line 583
    check-cast v0, Ljava/util/Map$Entry;

    .line 584
    .line 585
    new-instance v3, Ljava/lang/StringBuilder;

    .line 586
    .line 587
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 588
    .line 589
    .line 590
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 591
    .line 592
    .line 593
    move-result-object v5

    .line 594
    check-cast v5, Ljava/lang/String;

    .line 595
    .line 596
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    .line 598
    .line 599
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 600
    .line 601
    .line 602
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    check-cast v0, Ljava/lang/String;

    .line 607
    .line 608
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v0

    .line 615
    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 616
    .line 617
    .line 618
    goto :goto_3

    .line 619
    :cond_f
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 620
    .line 621
    .line 622
    move-result-object p3

    .line 623
    :cond_10
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;->getOptions()Ljava/util/Map;

    .line 624
    .line 625
    .line 626
    move-result-object p1

    .line 627
    if-eqz p1, :cond_12

    .line 628
    .line 629
    new-instance v0, Ljava/util/ArrayList;

    .line 630
    .line 631
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 632
    .line 633
    .line 634
    move-result v1

    .line 635
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 636
    .line 637
    .line 638
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 639
    .line 640
    .line 641
    move-result-object p1

    .line 642
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 643
    .line 644
    .line 645
    move-result-object p1

    .line 646
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 647
    .line 648
    .line 649
    move-result v1

    .line 650
    if-eqz v1, :cond_11

    .line 651
    .line 652
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 653
    .line 654
    .line 655
    move-result-object v1

    .line 656
    check-cast v1, Ljava/util/Map$Entry;

    .line 657
    .line 658
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 659
    .line 660
    .line 661
    move-result-object v1

    .line 662
    check-cast v1, Ljava/lang/String;

    .line 663
    .line 664
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 665
    .line 666
    .line 667
    goto :goto_4

    .line 668
    :cond_11
    move-object v5, v0

    .line 669
    goto :goto_5

    .line 670
    :cond_12
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 671
    .line 672
    .line 673
    move-result-object p1

    .line 674
    move-object v5, p1

    .line 675
    :goto_5
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 676
    .line 677
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;

    .line 678
    .line 679
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 680
    .line 681
    .line 682
    move-result-object v0

    .line 683
    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 684
    .line 685
    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    .line 687
    .line 688
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 689
    .line 690
    .line 691
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->settingDialogTitle()Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v1

    .line 695
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    .line 697
    .line 698
    const-string v1, " | "

    .line 699
    .line 700
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    .line 702
    .line 703
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->settingDialogMessage()Ljava/lang/String;

    .line 704
    .line 705
    .line 706
    move-result-object v1

    .line 707
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    .line 709
    .line 710
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 711
    .line 712
    .line 713
    move-result-object v0

    .line 714
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 715
    .line 716
    .line 717
    move-result-object p1

    .line 718
    check-cast p3, Ljava/util/Collection;

    .line 719
    .line 720
    new-array v0, v2, [Ljava/lang/String;

    .line 721
    .line 722
    invoke-interface {p3, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 723
    .line 724
    .line 725
    move-result-object p3

    .line 726
    check-cast p3, [Ljava/lang/CharSequence;

    .line 727
    .line 728
    iget-object v8, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;

    .line 729
    .line 730
    new-instance v0, Lwi/t;

    .line 731
    .line 732
    move-object v3, v0

    .line 733
    move-object v7, p2

    .line 734
    invoke-direct/range {v3 .. v8}, Lwi/t;-><init>(Lcom/startshorts/androidplayer/bean/configure/ConfigOptionsForTester;Ljava/util/List;Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;Lcom/startshorts/androidplayer/bean/settings/AppSettings;Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;)V

    .line 735
    .line 736
    .line 737
    invoke-virtual {p1, p3, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 738
    .line 739
    .line 740
    move-result-object p1

    .line 741
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 742
    .line 743
    .line 744
    goto :goto_6

    .line 745
    :cond_13
    sget-object p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 746
    .line 747
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->w0()Z

    .line 748
    .line 749
    .line 750
    move-result p2

    .line 751
    if-eqz p2, :cond_15

    .line 752
    .line 753
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->P()Z

    .line 754
    .line 755
    .line 756
    move-result p1

    .line 757
    xor-int/2addr p1, p3

    .line 758
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;

    .line 759
    .line 760
    invoke-static {p2}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->D0(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;)Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;

    .line 761
    .line 762
    .line 763
    move-result-object p2

    .line 764
    new-instance p3, Lcom/startshorts/androidplayer/viewmodel/settings/a$d;

    .line 765
    .line 766
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;

    .line 767
    .line 768
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 769
    .line 770
    .line 771
    move-result-object v0

    .line 772
    invoke-direct {p3, v0, p1}, Lcom/startshorts/androidplayer/viewmodel/settings/a$d;-><init>(Landroid/content/Context;Z)V

    .line 773
    .line 774
    .line 775
    invoke-virtual {p2, p3}, Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;->G(Lcom/startshorts/androidplayer/viewmodel/settings/a;)V

    .line 776
    .line 777
    .line 778
    goto :goto_6

    .line 779
    :cond_14
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;

    .line 780
    .line 781
    new-instance p2, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$d$a;

    .line 782
    .line 783
    invoke-direct {p2, p1}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$d$a;-><init>(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;)V

    .line 784
    .line 785
    .line 786
    new-instance p3, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$d$b;

    .line 787
    .line 788
    invoke-direct {p3}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$d$b;-><init>()V

    .line 789
    .line 790
    .line 791
    invoke-static {p1, p2, p3}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 792
    .line 793
    .line 794
    :cond_15
    :goto_6
    return-void

    .line 795
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    :pswitch_data_1
    .packed-switch 0x2710
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
