.class public final Lcom/startshorts/androidplayer/ui/activity/download/ClarityChooseDialog;
.super Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;
.source "ClarityChooseDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/activity/download/ClarityChooseDialog$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment<",
        "Lcom/startshorts/androidplayer/databinding/DialogFragmentClarityChooseBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nClarityChooseDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClarityChooseDialog.kt\ncom/startshorts/androidplayer/ui/activity/download/ClarityChooseDialog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 BindingAdapter.kt\ncom/drake/brv/BindingAdapter$BindingViewHolder\n+ 4 BindingAdapter.kt\ncom/drake/brv/BindingAdapter\n*L\n1#1,118:1\n1755#2,3:119\n1755#2,3:122\n1755#2,3:125\n1160#3,7:128\n243#4,6:135\n*S KotlinDebug\n*F\n+ 1 ClarityChooseDialog.kt\ncom/startshorts/androidplayer/ui/activity/download/ClarityChooseDialog\n*L\n52#1:119,3\n55#1:122,3\n58#1:125,3\n74#1:128,7\n71#1:135,6\n*E\n"
    }
.end annotation


# static fields
.field public static final r:Lcom/startshorts/androidplayer/ui/activity/download/ClarityChooseDialog$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private o:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Luh/d;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private q:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Luh/d;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/activity/download/ClarityChooseDialog$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/download/ClarityChooseDialog$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/activity/download/ClarityChooseDialog;->r:Lcom/startshorts/androidplayer/ui/activity/download/ClarityChooseDialog$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->Companion:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution$Companion;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution$Companion;->getPLAY_RESOLUTION_1080P()Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/ClarityChooseDialog;->o:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 11
    .line 12
    new-instance v0, Luh/d;

    .line 13
    .line 14
    const/16 v1, 0x438

    .line 15
    .line 16
    invoke-direct {v0, v1}, Luh/d;-><init>(I)V

    .line 17
    .line 18
    .line 19
    filled-new-array {v0}, [Luh/d;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/ClarityChooseDialog;->p:Ljava/util/List;

    .line 28
    .line 29
    return-void
.end method

.method public static synthetic O(Lcom/startshorts/androidplayer/ui/activity/download/ClarityChooseDialog;Lcom/drake/brv/BindingAdapter;Landroidx/recyclerview/widget/RecyclerView;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/ClarityChooseDialog;->S(Lcom/startshorts/androidplayer/ui/activity/download/ClarityChooseDialog;Lcom/drake/brv/BindingAdapter;Landroidx/recyclerview/widget/RecyclerView;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic P(Luh/d;Lcom/startshorts/androidplayer/ui/activity/download/ClarityChooseDialog;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/ClarityChooseDialog;->U(Luh/d;Lcom/startshorts/androidplayer/ui/activity/download/ClarityChooseDialog;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q(Lcom/startshorts/androidplayer/ui/activity/download/ClarityChooseDialog;Lcom/drake/brv/BindingAdapter$BindingViewHolder;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/download/ClarityChooseDialog;->T(Lcom/startshorts/androidplayer/ui/activity/download/ClarityChooseDialog;Lcom/drake/brv/BindingAdapter$BindingViewHolder;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final S(Lcom/startshorts/androidplayer/ui/activity/download/ClarityChooseDialog;Lcom/drake/brv/BindingAdapter;Landroidx/recyclerview/widget/RecyclerView;)Lkotlin/Unit;
    .locals 3

    .line 1
    const-string v0, "$this$setup"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "it"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget p2, Lcom/startshorts/androidplayer/R$layout;->item_clarity_choose:I

    .line 12
    .line 13
    const-class v0, Luh/d;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/drake/brv/BindingAdapter;->q()Ljava/util/Map;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v2, Lcom/startshorts/androidplayer/ui/activity/download/ClarityChooseDialog$onViewCreated$lambda$5$$inlined$addType$1;

    .line 34
    .line 35
    invoke-direct {v2, p2}, Lcom/startshorts/androidplayer/ui/activity/download/ClarityChooseDialog$onViewCreated$lambda$5$$inlined$addType$1;-><init>(I)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p1}, Lcom/drake/brv/BindingAdapter;->y()Ljava/util/Map;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    new-instance v2, Lcom/startshorts/androidplayer/ui/activity/download/ClarityChooseDialog$onViewCreated$lambda$5$$inlined$addType$2;

    .line 51
    .line 52
    invoke-direct {v2, p2}, Lcom/startshorts/androidplayer/ui/activity/download/ClarityChooseDialog$onViewCreated$lambda$5$$inlined$addType$2;-><init>(I)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    :goto_0
    new-instance p2, Luh/b;

    .line 59
    .line 60
    invoke-direct {p2, p0}, Luh/b;-><init>(Lcom/startshorts/androidplayer/ui/activity/download/ClarityChooseDialog;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2}, Lcom/drake/brv/BindingAdapter;->D(Lkotlin/jvm/functions/Function1;)V

    .line 64
    .line 65
    .line 66
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 67
    .line 68
    return-object p0
.end method

.method private static final T(Lcom/startshorts/androidplayer/ui/activity/download/ClarityChooseDialog;Lcom/drake/brv/BindingAdapter$BindingViewHolder;)Lkotlin/Unit;
    .locals 9

    .line 1
    const-string v0, "$this$onBind"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->j()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Luh/d;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->l()Landroidx/viewbinding/ViewBinding;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "null cannot be cast to non-null type com.startshorts.androidplayer.databinding.ItemClarityChooseBinding"

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    const-class v1, Landroid/view/View;

    .line 21
    .line 22
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-class v3, Lcom/startshorts/androidplayer/databinding/ItemClarityChooseBinding;

    .line 27
    .line 28
    const-string v4, "b"

    .line 29
    .line 30
    invoke-virtual {v3, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 35
    .line 36
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    check-cast v1, Lcom/startshorts/androidplayer/databinding/ItemClarityChooseBinding;

    .line 48
    .line 49
    invoke-virtual {p1, v1}, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->n(Landroidx/viewbinding/ViewBinding;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 54
    .line 55
    invoke-direct {p0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :cond_1
    invoke-virtual {p1}, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->l()Landroidx/viewbinding/ViewBinding;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    if-eqz v1, :cond_5

    .line 64
    .line 65
    check-cast v1, Lcom/startshorts/androidplayer/databinding/ItemClarityChooseBinding;

    .line 66
    .line 67
    :goto_0
    invoke-virtual {v0}, Luh/d;->c()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_3

    .line 72
    .line 73
    iget-object v2, v1, Lcom/startshorts/androidplayer/databinding/ItemClarityChooseBinding;->b:Landroid/widget/ImageView;

    .line 74
    .line 75
    const/4 v3, 0x0

    .line 76
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/activity/download/ClarityChooseDialog;->o:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 80
    .line 81
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolutionValue()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    invoke-virtual {v0}, Luh/d;->b()I

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-ne v2, v3, :cond_2

    .line 90
    .line 91
    iget-object v2, v1, Lcom/startshorts/androidplayer/databinding/ItemClarityChooseBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 92
    .line 93
    sget v3, Lcom/startshorts/androidplayer/R$drawable;->bg_resolution_1080_selected:I

    .line 94
    .line 95
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_2
    iget-object v2, v1, Lcom/startshorts/androidplayer/databinding/ItemClarityChooseBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 100
    .line 101
    sget v3, Lcom/startshorts/androidplayer/R$drawable;->bg_resolution_1080_unselected:I

    .line 102
    .line 103
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_3
    iget-object v2, v1, Lcom/startshorts/androidplayer/databinding/ItemClarityChooseBinding;->b:Landroid/widget/ImageView;

    .line 108
    .line 109
    const/16 v3, 0x8

    .line 110
    .line 111
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    .line 113
    .line 114
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/activity/download/ClarityChooseDialog;->o:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 115
    .line 116
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolutionValue()I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    invoke-virtual {v0}, Luh/d;->b()I

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    if-ne v2, v3, :cond_4

    .line 125
    .line 126
    iget-object v2, v1, Lcom/startshorts/androidplayer/databinding/ItemClarityChooseBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 127
    .line 128
    sget v3, Lcom/startshorts/androidplayer/R$drawable;->bg_resolution_selected:I

    .line 129
    .line 130
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_4
    iget-object v2, v1, Lcom/startshorts/androidplayer/databinding/ItemClarityChooseBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 135
    .line 136
    sget v3, Lcom/startshorts/androidplayer/R$drawable;->bg_resolution_unselected:I

    .line 137
    .line 138
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 139
    .line 140
    .line 141
    :goto_1
    iget-object v2, v1, Lcom/startshorts/androidplayer/databinding/ItemClarityChooseBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 142
    .line 143
    invoke-virtual {p1}, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->i()Landroid/content/Context;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {v0, p1}, Luh/d;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    const-string p1, "getRoot(...)"

    .line 159
    .line 160
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    new-instance v6, Luh/c;

    .line 164
    .line 165
    invoke-direct {v6, v0, p0}, Luh/c;-><init>(Luh/d;Lcom/startshorts/androidplayer/ui/activity/download/ClarityChooseDialog;)V

    .line 166
    .line 167
    .line 168
    const/4 v7, 0x1

    .line 169
    const/4 v8, 0x0

    .line 170
    const-wide/16 v4, 0x0

    .line 171
    .line 172
    invoke-static/range {v3 .. v8}, Ljk/b0;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 176
    .line 177
    return-object p0

    .line 178
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    .line 179
    .line 180
    invoke-direct {p0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw p0
.end method

.method private static final U(Luh/d;Lcom/startshorts/androidplayer/ui/activity/download/ClarityChooseDialog;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Luh/d;->b()I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    iget-object v0, p1, Lcom/startshorts/androidplayer/ui/activity/download/ClarityChooseDialog;->o:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolutionValue()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-ne p2, v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->dismiss()V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    iget-object p2, p1, Lcom/startshorts/androidplayer/ui/activity/download/ClarityChooseDialog;->q:Lkotlin/jvm/functions/Function1;

    .line 25
    .line 26
    if-eqz p2, :cond_1

    .line 27
    .line 28
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->dismiss()V

    .line 32
    .line 33
    .line 34
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 35
    .line 36
    return-object p0
.end method


# virtual methods
.method public final R(Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Ljava/util/List;)V
    .locals 3
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "cur"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "list"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/ClarityChooseDialog;->o:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 12
    .line 13
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/ClarityChooseDialog;->p:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 16
    .line 17
    .line 18
    check-cast p2, Ljava/lang/Iterable;

    .line 19
    .line 20
    instance-of p1, p2, Ljava/util/Collection;

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    move-object v0, p2

    .line 25
    check-cast v0, Ljava/util/Collection;

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolutionValue()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    const/16 v2, 0x438

    .line 55
    .line 56
    if-ne v1, v2, :cond_1

    .line 57
    .line 58
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/ClarityChooseDialog;->p:Ljava/util/List;

    .line 59
    .line 60
    new-instance v1, Luh/d;

    .line 61
    .line 62
    invoke-direct {v1, v2}, Luh/d;-><init>(I)V

    .line 63
    .line 64
    .line 65
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 69
    .line 70
    move-object v0, p2

    .line 71
    check-cast v0, Ljava/util/Collection;

    .line 72
    .line 73
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_3

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_5

    .line 89
    .line 90
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolutionValue()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    const/16 v2, 0x2d0

    .line 101
    .line 102
    if-ne v1, v2, :cond_4

    .line 103
    .line 104
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/ClarityChooseDialog;->p:Ljava/util/List;

    .line 105
    .line 106
    new-instance v1, Luh/d;

    .line 107
    .line 108
    invoke-direct {v1, v2}, Luh/d;-><init>(I)V

    .line 109
    .line 110
    .line 111
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    :cond_5
    :goto_1
    if-eqz p1, :cond_6

    .line 115
    .line 116
    move-object p1, p2

    .line 117
    check-cast p1, Ljava/util/Collection;

    .line 118
    .line 119
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-eqz p1, :cond_6

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_6
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result p2

    .line 134
    if-eqz p2, :cond_8

    .line 135
    .line 136
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    check-cast p2, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 141
    .line 142
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolutionValue()I

    .line 143
    .line 144
    .line 145
    move-result p2

    .line 146
    const/16 v0, 0x1e0

    .line 147
    .line 148
    if-ne p2, v0, :cond_7

    .line 149
    .line 150
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/ClarityChooseDialog;->p:Ljava/util/List;

    .line 151
    .line 152
    new-instance p2, Luh/d;

    .line 153
    .line 154
    invoke-direct {p2, v0}, Luh/d;-><init>(I)V

    .line 155
    .line 156
    .line 157
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    :cond_8
    :goto_2
    return-void
.end method

.method public final V(Lkotlin/jvm/functions/Function1;)V
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
            "Luh/d;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/ClarityChooseDialog;->q:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public l()F
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->dialog_fragment_clarity_choose:I

    .line 2
    .line 3
    return v0
.end method

.method public o()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->onStart()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentClarityChooseBinding;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentClarityChooseBinding;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    .line 12
    const-string v1, "recyclerView"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/download/ClarityChooseDialog;->p:Ljava/util/List;

    .line 18
    .line 19
    invoke-static {v0, v1}, Lo1/b;->f(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
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
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentClarityChooseBinding;

    .line 14
    .line 15
    iget-object v0, p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentClarityChooseBinding;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    .line 17
    const-string p1, "recyclerView"

    .line 18
    .line 19
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/16 v5, 0xe

    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v1, 0x4

    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-static/range {v0 .. v6}, Lo1/b;->c(Landroidx/recyclerview/widget/RecyclerView;IIZZILjava/lang/Object;)Landroidx/recyclerview/widget/RecyclerView;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    new-instance p2, Luh/a;

    .line 34
    .line 35
    invoke-direct {p2, p0}, Luh/a;-><init>(Lcom/startshorts/androidplayer/ui/activity/download/ClarityChooseDialog;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p1, p2}, Lo1/b;->g(Landroidx/recyclerview/widget/RecyclerView;Lkotlin/jvm/functions/Function2;)Lcom/drake/brv/BindingAdapter;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/download/ClarityChooseDialog;->p:Ljava/util/List;

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Lcom/drake/brv/BindingAdapter;->K(Ljava/util/List;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "ClarityChooseDialog"

    .line 2
    .line 3
    return-object v0
.end method
