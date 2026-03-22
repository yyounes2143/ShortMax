.class public final Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer;
.super Lcom/startshorts/androidplayer/ui/activity/base/PermissionActivity;
.source "FragmentContainer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/activity/base/PermissionActivity<",
        "Lcom/startshorts/androidplayer/databinding/ActivityFragmentContainerBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFragmentContainer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentContainer.kt\ncom/startshorts/androidplayer/ui/activity/base/FragmentContainer\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,238:1\n256#2,2:239\n*S KotlinDebug\n*F\n+ 1 FragmentContainer.kt\ncom/startshorts/androidplayer/ui/activity/base/FragmentContainer\n*L\n86#1:239,2\n*E\n"
    }
.end annotation


# static fields
.field public static final p:Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final q:Lcom/startshorts/androidplayer/bean/bundle/IntBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer;->p:Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$a;

    .line 8
    .line 9
    new-instance v0, Lcom/startshorts/androidplayer/bean/bundle/IntBundle;

    .line 10
    .line 11
    const-string v1, "fragment_type"

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-direct {v0, v1, v2}, Lcom/startshorts/androidplayer/bean/bundle/IntBundle;-><init>(Ljava/lang/String;I)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer;->q:Lcom/startshorts/androidplayer/bean/bundle/IntBundle;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/base/PermissionActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic K()Lcom/startshorts/androidplayer/bean/bundle/IntBundle;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer;->q:Lcom/startshorts/androidplayer/bean/bundle/IntBundle;

    .line 2
    .line 3
    return-object v0
.end method

.method private final L()Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer;->N()Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method

.method private final M()Landroid/os/Bundle;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "fragment_bundle"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/startshorts/androidplayer/bean/bundle/FragmentBundle;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/bundle/FragmentBundle;->getList()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v2, v1

    .line 22
    :goto_0
    if-nez v2, :cond_1

    .line 23
    .line 24
    return-object v1

    .line 25
    :cond_1
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/bundle/FragmentBundle;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p0, v1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-instance v1, Landroid/os/Bundle;

    .line 33
    .line 34
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/bundle/FragmentBundle;->getList()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_7

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Lcom/startshorts/androidplayer/bean/bundle/IFragmentBundle;

    .line 56
    .line 57
    instance-of v3, v2, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;

    .line 58
    .line 59
    if-eqz v3, :cond_3

    .line 60
    .line 61
    check-cast v2, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;

    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;->getKey()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;->getValue()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    instance-of v3, v2, Lcom/startshorts/androidplayer/bean/bundle/IntBundle;

    .line 76
    .line 77
    if-eqz v3, :cond_4

    .line 78
    .line 79
    check-cast v2, Lcom/startshorts/androidplayer/bean/bundle/IntBundle;

    .line 80
    .line 81
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/bundle/IntBundle;->getKey()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/bundle/IntBundle;->getValue()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_4
    instance-of v3, v2, Lcom/startshorts/androidplayer/bean/bundle/LongBundle;

    .line 94
    .line 95
    if-eqz v3, :cond_5

    .line 96
    .line 97
    check-cast v2, Lcom/startshorts/androidplayer/bean/bundle/LongBundle;

    .line 98
    .line 99
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/bundle/LongBundle;->getKey()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/bundle/LongBundle;->getValue()J

    .line 104
    .line 105
    .line 106
    move-result-wide v4

    .line 107
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_5
    instance-of v3, v2, Lcom/startshorts/androidplayer/bean/bundle/BooleanBundle;

    .line 112
    .line 113
    if-eqz v3, :cond_6

    .line 114
    .line 115
    check-cast v2, Lcom/startshorts/androidplayer/bean/bundle/BooleanBundle;

    .line 116
    .line 117
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/bundle/BooleanBundle;->getKey()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/bundle/BooleanBundle;->getValue()Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_6
    instance-of v3, v2, Lcom/startshorts/androidplayer/bean/bundle/SerializableBundle;

    .line 130
    .line 131
    if-eqz v3, :cond_2

    .line 132
    .line 133
    check-cast v2, Lcom/startshorts/androidplayer/bean/bundle/SerializableBundle;

    .line 134
    .line 135
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/bundle/SerializableBundle;->getKey()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/bundle/SerializableBundle;->getValue()Ljava/io/Serializable;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_7
    return-object v1
.end method

.method private final N()Landroidx/fragment/app/Fragment;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "FragmentContainer"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private final O(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    sget-object v0, Led/a;->a:Led/a;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p0, v1}, Led/a;->b(Landroid/app/Activity;Z)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const-string v2, "fragment_type"

    .line 11
    .line 12
    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v2, v0

    .line 18
    :goto_0
    const-string v3, "fragment_container_top_margin"

    .line 19
    .line 20
    const-string v4, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    .line 21
    .line 22
    if-eqz v2, :cond_6

    .line 23
    .line 24
    if-eq v2, v1, :cond_1

    .line 25
    .line 26
    goto/16 :goto_4

    .line 27
    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/startshorts/androidplayer/databinding/ActivityFragmentContainerBinding;

    .line 33
    .line 34
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ActivityFragmentContainerBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    instance-of v2, v1, Landroid/view/ViewGroup;

    .line 41
    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    check-cast v1, Landroid/view/ViewGroup;

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    const/4 v1, 0x0

    .line 48
    :goto_1
    if-eqz v1, :cond_4

    .line 49
    .line 50
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    move v5, v0

    .line 55
    :goto_2
    if-ge v5, v2, :cond_4

    .line 56
    .line 57
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    check-cast v7, Lcom/startshorts/androidplayer/databinding/ActivityFragmentContainerBinding;

    .line 69
    .line 70
    iget-object v7, v7, Lcom/startshorts/androidplayer/databinding/ActivityFragmentContainerBinding;->a:Landroid/widget/FrameLayout;

    .line 71
    .line 72
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    if-eqz v7, :cond_3

    .line 77
    .line 78
    move v7, v0

    .line 79
    goto :goto_3

    .line 80
    :cond_3
    const/16 v7, 0x8

    .line 81
    .line 82
    :goto_3
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    add-int/lit8 v5, v5, 0x1

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_4
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->J()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    check-cast v1, Lcom/startshorts/androidplayer/databinding/ActivityFragmentContainerBinding;

    .line 99
    .line 100
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ActivityFragmentContainerBinding;->a:Landroid/widget/FrameLayout;

    .line 101
    .line 102
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 110
    .line 111
    if-eqz p1, :cond_5

    .line 112
    .line 113
    invoke-virtual {p1, v3, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    :cond_5
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 118
    .line 119
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_6
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 124
    .line 125
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->J()I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    check-cast v1, Lcom/startshorts/androidplayer/databinding/ActivityFragmentContainerBinding;

    .line 134
    .line 135
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ActivityFragmentContainerBinding;->f:Landroid/view/View;

    .line 136
    .line 137
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 145
    .line 146
    if-eqz p1, :cond_7

    .line 147
    .line 148
    invoke-virtual {p1, v3, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    :cond_7
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 153
    .line 154
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    .line 156
    .line 157
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer;->P()V

    .line 158
    .line 159
    .line 160
    :goto_4
    return-void
.end method

.method private final P()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityFragmentContainerBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityFragmentContainerBinding;->c:Landroid/widget/ImageView;

    .line 8
    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$b;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$b;-><init>(Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final Q(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "fragment_name"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/FragmentFactory;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "instantiate(...)"

    .line 37
    .line 38
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer;->R(Landroidx/fragment/app/Fragment;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    :goto_0
    return-void
.end method

.method private final R(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "getSupportFragmentManager(...)"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget v1, Lcom/startshorts/androidplayer/R$id;->fragment_container:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget v1, Lcom/startshorts/androidplayer/R$id;->fragment_container:I

    .line 25
    .line 26
    const-string v2, "FragmentContainer"

    .line 27
    .line 28
    invoke-virtual {v0, v1, p1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 29
    .line 30
    .line 31
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 32
    .line 33
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method


# virtual methods
.method public final S(ILandroid/view/View$OnClickListener;)V
    .locals 2
    .param p2    # Landroid/view/View$OnClickListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "onClickListener"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityFragmentContainerBinding;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityFragmentContainerBinding;->b:Landroidx/databinding/ViewStubProxy;

    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Ljk/e0;->h(Landroidx/databinding/ViewStubProxy;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getRoot()Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    instance-of v1, v0, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    check-cast v0, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method public final T(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityFragmentContainerBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityFragmentContainerBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public o()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->activity_fragment_container:I

    .line 2
    .line 3
    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lms/c;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer;->L()Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2
    .annotation runtime Lms/c;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer;->L()Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->i()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->k()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->s()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 28
    .line 29
    .line 30
    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer;->M()Landroid/os/Bundle;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer;->O(Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer;->Q(Landroid/os/Bundle;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "FragmentContainer"

    .line 2
    .line 3
    return-object v0
.end method
