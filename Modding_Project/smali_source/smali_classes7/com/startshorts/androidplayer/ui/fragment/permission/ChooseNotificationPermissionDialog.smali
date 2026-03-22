.class public final Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog;
.super Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;
.source "ChooseNotificationPermissionDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog$a;,
        Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment<",
        "Lcom/startshorts/androidplayer/databinding/DialogChooseNotificationPermissionBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nChooseNotificationPermissionDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChooseNotificationPermissionDialog.kt\ncom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,138:1\n1872#2,3:139\n1317#3,2:142\n*S KotlinDebug\n*F\n+ 1 ChooseNotificationPermissionDialog.kt\ncom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog\n*L\n100#1:139,3\n120#1:142,2\n*E\n"
    }
.end annotation


# static fields
.field public static final u:Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog;->u:Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog$b;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Y(Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog;->f0(Landroid/view/View;Landroid/view/View;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic Z(Landroid/view/View;Lkotlin/jvm/functions/Function2;Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog;->e0(Landroid/view/View;Lkotlin/jvm/functions/Function2;Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a0(Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog;Landroid/view/View;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog;->d0(Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog;Landroid/view/View;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final b0(Landroid/view/View;)Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog$a;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog$a;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v0, "null cannot be cast to non-null type com.startshorts.androidplayer.ui.fragment.permission.ChooseNotificationPermissionDialog.ChooseItem"

    .line 14
    .line 15
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    check-cast p1, Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog$a;

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    return-object p1
.end method

.method private final c0()V
    .locals 12

    .line 1
    new-instance v0, Lri/b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lri/b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;->N()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "coming_soon"

    .line 11
    .line 12
    const/4 v3, 0x2

    .line 13
    const-string v4, "check_in"

    .line 14
    .line 15
    const/4 v5, 0x1

    .line 16
    const/4 v6, 0x0

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v7

    .line 23
    sparse-switch v7, :sswitch_data_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :sswitch_0
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v1, v3

    .line 35
    goto :goto_1

    .line 36
    :sswitch_1
    const-string v7, "immersion_back"

    .line 37
    .line 38
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    :cond_1
    :goto_0
    move v1, v6

    .line 43
    goto :goto_1

    .line 44
    :sswitch_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_2

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/4 v1, 0x3

    .line 52
    goto :goto_1

    .line 53
    :sswitch_3
    const-string v7, "favorite_click"

    .line 54
    .line 55
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_3

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    move v1, v5

    .line 63
    :goto_1
    const-string v7, "new"

    .line 64
    .line 65
    const-string v8, "update"

    .line 66
    .line 67
    filled-new-array {v7, v8, v4, v2}, [Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    const-string v7, "requireContext(...)"

    .line 84
    .line 85
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const-string v7, "notification_permission_dialog_choose_item_"

    .line 89
    .line 90
    const/4 v8, 0x0

    .line 91
    invoke-static {v4, v7, v6, v3, v8}, Ljk/d;->c(Landroid/content/Context;Ljava/lang/String;IILjava/lang/Object;)Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    check-cast v3, Ljava/lang/Iterable;

    .line 96
    .line 97
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    move v4, v6

    .line 102
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    if-eqz v7, :cond_7

    .line 107
    .line 108
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    add-int/lit8 v8, v4, 0x1

    .line 113
    .line 114
    if-gez v4, :cond_4

    .line 115
    .line 116
    invoke-static {}, Lkotlin/collections/CollectionsKt;->y()V

    .line 117
    .line 118
    .line 119
    :cond_4
    check-cast v7, Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 122
    .line 123
    .line 124
    move-result-object v9

    .line 125
    sget v10, Lcom/startshorts/androidplayer/R$layout;->view_notification_choose_item:I

    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 128
    .line 129
    .line 130
    move-result-object v11

    .line 131
    check-cast v11, Lcom/startshorts/androidplayer/databinding/DialogChooseNotificationPermissionBinding;

    .line 132
    .line 133
    iget-object v11, v11, Lcom/startshorts/androidplayer/databinding/DialogChooseNotificationPermissionBinding;->a:Landroid/widget/LinearLayout;

    .line 134
    .line 135
    invoke-virtual {v9, v10, v11, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v9

    .line 139
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 140
    .line 141
    .line 142
    move-result-object v10

    .line 143
    check-cast v10, Lcom/startshorts/androidplayer/databinding/DialogChooseNotificationPermissionBinding;

    .line 144
    .line 145
    iget-object v10, v10, Lcom/startshorts/androidplayer/databinding/DialogChooseNotificationPermissionBinding;->a:Landroid/widget/LinearLayout;

    .line 146
    .line 147
    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 148
    .line 149
    .line 150
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 151
    .line 152
    .line 153
    move-result v10

    .line 154
    if-eqz v10, :cond_5

    .line 155
    .line 156
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v10

    .line 160
    check-cast v10, Ljava/lang/String;

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .line 167
    .line 168
    const-string v11, "initChooseItem -> hasNext = null, selectIterator="

    .line 169
    .line 170
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v10

    .line 180
    invoke-virtual {p0, v10}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->g(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    const-string v10, ""

    .line 184
    .line 185
    :goto_3
    new-instance v11, Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog$a;

    .line 186
    .line 187
    invoke-direct {v11, v7, v6, v10}, Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog$a;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v9, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    sget v10, Lcom/startshorts/androidplayer/R$id;->notification_choose_item_tv:I

    .line 194
    .line 195
    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 196
    .line 197
    .line 198
    move-result-object v10

    .line 199
    check-cast v10, Landroid/widget/TextView;

    .line 200
    .line 201
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    .line 203
    .line 204
    new-instance v7, Lri/c;

    .line 205
    .line 206
    invoke-direct {v7, v9, v0, p0}, Lri/c;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function2;Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v9, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    .line 211
    .line 212
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    if-ne v4, v1, :cond_6

    .line 216
    .line 217
    move v4, v5

    .line 218
    goto :goto_4

    .line 219
    :cond_6
    move v4, v6

    .line 220
    :goto_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    invoke-interface {v0, v9, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move v4, v8

    .line 228
    goto :goto_2

    .line 229
    :cond_7
    return-void

    .line 230
    nop

    .line 231
    :sswitch_data_0
    .sparse-switch
        -0x558ab2db -> :sswitch_3
        -0x5316dc07 -> :sswitch_2
        -0x19a17145 -> :sswitch_1
        0x5b9b0fbc -> :sswitch_0
    .end sparse-switch
.end method

.method private static final d0(Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog;Landroid/view/View;Z)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog;->b0(Landroid/view/View;)Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog$a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, p2}, Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog$a;->b(Z)V

    .line 13
    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog$a;->a()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;->X(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    sget p0, Lcom/startshorts/androidplayer/R$id;->notification_choose_item_iv:I

    .line 25
    .line 26
    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Landroid/widget/ImageView;

    .line 31
    .line 32
    if-eqz p2, :cond_1

    .line 33
    .line 34
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->ic_notification_choose_item_check:I

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->ic_notification_choose_item_uncheck:I

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 43
    .line 44
    .line 45
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 46
    .line 47
    return-object p0
.end method

.method private static final e0(Landroid/view/View;Lkotlin/jvm/functions/Function2;Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    if-nez p3, :cond_1

    .line 12
    .line 13
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    if-nez p3, :cond_0

    .line 21
    .line 22
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 23
    .line 24
    :cond_0
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p3

    .line 28
    xor-int/lit8 p3, p3, 0x1

    .line 29
    .line 30
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    invoke-interface {p1, p0, p3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    check-cast p2, Lcom/startshorts/androidplayer/databinding/DialogChooseNotificationPermissionBinding;

    .line 42
    .line 43
    iget-object p2, p2, Lcom/startshorts/androidplayer/databinding/DialogChooseNotificationPermissionBinding;->a:Landroid/widget/LinearLayout;

    .line 44
    .line 45
    const-string p3, "checkBoxContainer"

    .line 46
    .line 47
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-static {p2}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    new-instance p3, Lri/d;

    .line 55
    .line 56
    invoke-direct {p3, p0}, Lri/d;-><init>(Landroid/view/View;)V

    .line 57
    .line 58
    .line 59
    invoke-static {p2, p3}, Lkotlin/sequences/j;->t(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    if-eqz p2, :cond_1

    .line 72
    .line 73
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    check-cast p2, Landroid/view/View;

    .line 78
    .line 79
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 80
    .line 81
    invoke-interface {p1, p2, p3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    return-void
.end method

.method private static final f0(Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    xor-int/lit8 p0, p0, 0x1

    .line 11
    .line 12
    return p0
.end method

.method private final g0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogChooseNotificationPermissionBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogChooseNotificationPermissionBinding;->b:Landroid/widget/ImageView;

    .line 8
    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog$c;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog$c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final h0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogChooseNotificationPermissionBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogChooseNotificationPermissionBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog$d;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog$d;-><init>(Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public k()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->dialog_choose_notification_permission:I

    .line 2
    .line 3
    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "ChooseNotificationPermissionDialog"

    .line 2
    .line 3
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog;->g0()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog;->h0()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog;->c0()V

    .line 16
    .line 17
    .line 18
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 19
    .line 20
    new-instance v3, Landroid/os/Bundle;

    .line 21
    .line 22
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string p1, "scene"

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;->N()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {v3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 35
    .line 36
    const/4 v6, 0x4

    .line 37
    const/4 v7, 0x0

    .line 38
    const-string v2, "noti_select_popup_show"

    .line 39
    .line 40
    const-wide/16 v4, 0x0

    .line 41
    .line 42
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public p()I
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
