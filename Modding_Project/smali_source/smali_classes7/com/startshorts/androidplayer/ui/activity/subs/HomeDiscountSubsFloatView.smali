.class public final Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "HomeDiscountSubsFloatView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final h:Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private d:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private e:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public f:Lcom/startshorts/androidplayer/databinding/ViewPacketFloatBinding;

.field private final g:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;->h:Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView$a;

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

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;->b:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;->c:Ljava/lang/String;

    .line 6
    new-instance v0, Lci/b;

    invoke-direct {v0}, Lci/b;-><init>()V

    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;->d:Lkotlin/jvm/functions/Function2;

    .line 7
    new-instance v0, Lci/c;

    invoke-direct {v0, p0}, Lci/c;-><init>(Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;)V

    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;->g:Ljava/lang/Runnable;

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;->w(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final A()V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, v1, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getExpireTime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v4

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    goto/16 :goto_4

    .line 16
    .line 17
    :cond_0
    move-wide v4, v2

    .line 18
    :goto_0
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 21
    .line 22
    .line 23
    move-result-wide v6

    .line 24
    sub-long/2addr v4, v6

    .line 25
    const-wide/16 v6, 0x3e8

    .line 26
    .line 27
    div-long/2addr v4, v6

    .line 28
    cmp-long v0, v4, v2

    .line 29
    .line 30
    if-gez v0, :cond_1

    .line 31
    .line 32
    move-wide v4, v2

    .line 33
    :cond_1
    const/16 v0, 0xe10

    .line 34
    .line 35
    int-to-long v6, v0

    .line 36
    div-long v8, v4, v6

    .line 37
    .line 38
    rem-long v6, v4, v6

    .line 39
    .line 40
    const/16 v0, 0x3c

    .line 41
    .line 42
    int-to-long v10, v0

    .line 43
    div-long/2addr v6, v10

    .line 44
    rem-long v10, v4, v10

    .line 45
    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPacketFloatBinding;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewPacketFloatBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 51
    .line 52
    new-instance v12, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-wide/16 v13, 0xa

    .line 58
    .line 59
    cmp-long v15, v8, v13

    .line 60
    .line 61
    const/16 v2, 0x30

    .line 62
    .line 63
    if-gez v15, :cond_2

    .line 64
    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    goto :goto_1

    .line 81
    :cond_2
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    :goto_1
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const/16 v3, 0x3a

    .line 89
    .line 90
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    cmp-long v8, v6, v13

    .line 94
    .line 95
    if-gez v8, :cond_3

    .line 96
    .line 97
    new-instance v8, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    goto :goto_2

    .line 113
    :cond_3
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    :goto_2
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    cmp-long v3, v10, v13

    .line 124
    .line 125
    if-gez v3, :cond_4

    .line 126
    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    goto :goto_3

    .line 143
    :cond_4
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    :goto_3
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    .line 156
    .line 157
    const-wide/16 v2, 0x0

    .line 158
    .line 159
    cmp-long v0, v4, v2

    .line 160
    .line 161
    if-lez v0, :cond_5

    .line 162
    .line 163
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;->E()V

    .line 164
    .line 165
    .line 166
    goto :goto_5

    .line 167
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPacketFloatBinding;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    iget-object v2, v1, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;->g:Ljava/lang/Runnable;

    .line 176
    .line 177
    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 178
    .line 179
    .line 180
    invoke-static/range {p0 .. p0}, Ljk/b0;->d(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .line 182
    .line 183
    goto :goto_5

    .line 184
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 185
    .line 186
    .line 187
    :goto_5
    return-void
.end method

.method private static final C(Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Lkotlin/Unit;
    .locals 1

    .line 1
    new-instance v0, Lci/e;

    .line 2
    .line 3
    invoke-direct {v0, p2, p0, p1}, Lci/e;-><init>(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method private static final D(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 8

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscount()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;->y()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iput-object p0, p1, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 16
    .line 17
    invoke-static {p1}, Ljk/b0;->l(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;->A()V

    .line 21
    .line 22
    .line 23
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 24
    .line 25
    new-instance v3, Landroid/os/Bundle;

    .line 26
    .line 27
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string p0, "from"

    .line 31
    .line 32
    const-string p1, "discover"

    .line 33
    .line 34
    invoke-virtual {v3, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->isLowestSku()Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_0

    .line 42
    .line 43
    const-string p0, "active_nosub_floating"

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const-string p0, "subscription_retention_floating"

    .line 47
    .line 48
    :goto_0
    const-string p1, "type"

    .line 49
    .line 50
    invoke-virtual {v3, p1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 54
    .line 55
    const/4 v6, 0x4

    .line 56
    const/4 v7, 0x0

    .line 57
    const-string v2, "discount_pop_show"

    .line 58
    .line 59
    const-wide/16 v4, 0x0

    .line 60
    .line 61
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    invoke-static {p1}, Ljk/b0;->d(Landroid/view/View;)V

    .line 66
    .line 67
    .line 68
    :goto_1
    return-void
.end method

.method private final E()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPacketFloatBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;->g:Ljava/lang/Runnable;

    .line 10
    .line 11
    const-wide/16 v2, 0x3e8

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static synthetic q(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;->D(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic r(Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;->x(Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic s(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;->z(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic t(Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;->C(Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic u(Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;->v(Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final v(Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;->A()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final x(Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;Landroid/view/View;)Lkotlin/Unit;
    .locals 9

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;->d:Lkotlin/jvm/functions/Function2;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;->b:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 11
    .line 12
    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 16
    .line 17
    new-instance v4, Landroid/os/Bundle;

    .line 18
    .line 19
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string p1, "from"

    .line 23
    .line 24
    const-string v0, "discover"

    .line 25
    .line 26
    invoke-virtual {v4, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 30
    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->isLowestSku()Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    const/4 p1, 0x1

    .line 38
    if-ne p0, p1, :cond_0

    .line 39
    .line 40
    const-string p0, "active_nosub_floating"

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const-string p0, "subscription_retention_floating"

    .line 44
    .line 45
    :goto_0
    const-string p1, "type"

    .line 46
    .line 47
    invoke-virtual {v4, p1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 51
    .line 52
    const/4 v7, 0x4

    .line 53
    const/4 v8, 0x0

    .line 54
    const-string v3, "discount_pop_click"

    .line 55
    .line 56
    const-wide/16 v5, 0x0

    .line 57
    .line 58
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 62
    .line 63
    return-object p0
.end method

.method private final y()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;->c:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "DISCOVER"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method private static final z(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Lkotlin/Unit;
    .locals 0

    .line 1
    const-string p1, "type"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method


# virtual methods
.method public final B(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "tabName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;->c:Ljava/lang/String;

    .line 7
    .line 8
    sget-object p1, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->a:Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->m()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->H0()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;->y()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->isLowestSku()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    sget-object v1, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;->a:Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/purchase/HomeRetainDiscountSubsPresent;->h()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-gtz v1, :cond_0

    .line 43
    .line 44
    invoke-static {p0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->isLowestSku()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    const-string v2, "retainer_subs_sku"

    .line 53
    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    const-string v1, "lowest_subs_sku"

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    move-object v1, v2

    .line 60
    :goto_0
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;->b:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPacketFloatBinding;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ViewPacketFloatBinding;->b:Landroid/widget/ImageView;

    .line 67
    .line 68
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;->b:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_2

    .line 75
    .line 76
    sget v2, Lcom/startshorts/androidplayer/R$drawable;->icon_welfare_packet:I

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    sget v2, Lcom/startshorts/androidplayer/R$drawable;->icon_packet_home:I

    .line 80
    .line 81
    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    .line 83
    .line 84
    new-instance v1, Lci/a;

    .line 85
    .line 86
    invoke-direct {v1, p0, v0}, Lci/a;-><init>(Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->k(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lkotlin/jvm/functions/Function1;)V

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_3
    invoke-static {p0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 94
    .line 95
    .line 96
    :goto_2
    return-void
.end method

.method public final getBinding()Lcom/startshorts/androidplayer/databinding/ViewPacketFloatBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;->f:Lcom/startshorts/androidplayer/databinding/ViewPacketFloatBinding;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "binding"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getMSku()Lcom/startshorts/androidplayer/bean/subs/SubsSku;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMType()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOnViewClick()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;->d:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOnViewHidden()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;->e:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPacketFloatBinding;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;->g:Ljava/lang/Runnable;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final setBinding(Lcom/startshorts/androidplayer/databinding/ViewPacketFloatBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/databinding/ViewPacketFloatBinding;
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;->f:Lcom/startshorts/androidplayer/databinding/ViewPacketFloatBinding;

    .line 7
    .line 8
    return-void
.end method

.method public final setMSku(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    return-void
.end method

.method public final setMType(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setOnViewClick(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;->d:Lkotlin/jvm/functions/Function2;

    .line 7
    .line 8
    return-void
.end method

.method public final setOnViewHidden(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;->e:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;->e:Lkotlin/jvm/functions/Function1;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public final w(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p2, "context"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 p2, 0x1

    .line 11
    invoke-static {p1, p0, p2}, Lcom/startshorts/androidplayer/databinding/ViewPacketFloatBinding;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/startshorts/androidplayer/databinding/ViewPacketFloatBinding;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;->setBinding(Lcom/startshorts/androidplayer/databinding/ViewPacketFloatBinding;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;->getBinding()Lcom/startshorts/androidplayer/databinding/ViewPacketFloatBinding;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string p1, "getRoot(...)"

    .line 27
    .line 28
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v3, Lci/d;

    .line 32
    .line 33
    invoke-direct {v3, p0}, Lci/d;-><init>(Lcom/startshorts/androidplayer/ui/activity/subs/HomeDiscountSubsFloatView;)V

    .line 34
    .line 35
    .line 36
    const/4 v4, 0x1

    .line 37
    const/4 v5, 0x0

    .line 38
    const-wide/16 v1, 0x0

    .line 39
    .line 40
    invoke-static/range {v0 .. v5}, Ljk/b0;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
