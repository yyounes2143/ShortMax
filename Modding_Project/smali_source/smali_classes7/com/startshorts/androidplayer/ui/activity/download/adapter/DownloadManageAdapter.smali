.class public final Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;
.super Lcom/drake/brv/BindingAdapter;
.source "DownloadManageAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDownloadManageAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadManageAdapter.kt\ncom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter\n+ 2 BindingAdapter.kt\ncom/drake/brv/BindingAdapter\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 BindingAdapter.kt\ncom/drake/brv/BindingAdapter$BindingViewHolder\n*L\n1#1,226:1\n243#2,6:227\n243#2,6:233\n243#2,6:239\n1863#3,2:245\n774#3:247\n865#3,2:248\n1782#3,4:250\n1160#4,7:254\n1160#4,7:261\n1160#4,7:268\n*S KotlinDebug\n*F\n+ 1 DownloadManageAdapter.kt\ncom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter\n*L\n43#1:227,6\n44#1:233,6\n45#1:239,6\n143#1:245,2\n157#1:247\n157#1:248,2\n209#1:250,4\n50#1:254,7\n57#1:261,7\n98#1:268,7\n*E\n"
    }
.end annotation


# static fields
.field public static final S:Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final T:Lms/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lms/i<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final U:Lms/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lms/i<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final V:Lms/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lms/i<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private M:Landroidx/lifecycle/LifecycleOwner;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private N:Lcom/startshorts/androidplayer/ui/activity/download/DownloadManagerModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private O:Z

.field private P:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private Q:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/startshorts/androidplayer/bean/download/DownloadedManagerInfo;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private R:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
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
    new-instance v0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;->S:Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter$a;

    .line 8
    .line 9
    new-instance v0, Lvh/d;

    .line 10
    .line 11
    invoke-direct {v0}, Lvh/d;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;->T:Lms/i;

    .line 19
    .line 20
    new-instance v0, Lvh/e;

    .line 21
    .line 22
    invoke-direct {v0}, Lvh/e;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;->U:Lms/i;

    .line 30
    .line 31
    new-instance v0, Lvh/f;

    .line 32
    .line 33
    invoke-direct {v0}, Lvh/f;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sput-object v0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;->V:Lms/i;

    .line 41
    .line 42
    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;Lcom/startshorts/androidplayer/ui/activity/download/DownloadManagerModel;)V
    .locals 2
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/ui/activity/download/DownloadManagerModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "lifecycleOwner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "viewModel"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/drake/brv/BindingAdapter;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;->M:Landroidx/lifecycle/LifecycleOwner;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;->N:Lcom/startshorts/androidplayer/ui/activity/download/DownloadManagerModel;

    .line 17
    .line 18
    sget p1, Lcom/startshorts/androidplayer/R$layout;->item_download_drama_head:I

    .line 19
    .line 20
    const-class p2, Lcom/startshorts/androidplayer/bean/download/DownloadManagerHeader;

    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/Class;->getModifiers()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/drake/brv/BindingAdapter;->q()Ljava/util/Map;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter$special$$inlined$addType$1;

    .line 41
    .line 42
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter$special$$inlined$addType$1;-><init>(I)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/drake/brv/BindingAdapter;->y()Ljava/util/Map;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter$special$$inlined$addType$2;

    .line 58
    .line 59
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter$special$$inlined$addType$2;-><init>(I)V

    .line 60
    .line 61
    .line 62
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    :goto_0
    sget p1, Lcom/startshorts/androidplayer/R$layout;->item_downloading_drama:I

    .line 66
    .line 67
    const-class p2, Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;

    .line 68
    .line 69
    invoke-virtual {p2}, Ljava/lang/Class;->getModifiers()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_1

    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/drake/brv/BindingAdapter;->q()Ljava/util/Map;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter$special$$inlined$addType$3;

    .line 88
    .line 89
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter$special$$inlined$addType$3;-><init>(I)V

    .line 90
    .line 91
    .line 92
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/drake/brv/BindingAdapter;->y()Ljava/util/Map;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter$special$$inlined$addType$4;

    .line 105
    .line 106
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter$special$$inlined$addType$4;-><init>(I)V

    .line 107
    .line 108
    .line 109
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    :goto_1
    sget p1, Lcom/startshorts/androidplayer/R$layout;->item_downloaded_drama:I

    .line 113
    .line 114
    const-class p2, Lcom/startshorts/androidplayer/bean/download/DownloadedManagerInfo;

    .line 115
    .line 116
    invoke-virtual {p2}, Ljava/lang/Class;->getModifiers()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_2

    .line 125
    .line 126
    invoke-virtual {p0}, Lcom/drake/brv/BindingAdapter;->q()Ljava/util/Map;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter$special$$inlined$addType$5;

    .line 135
    .line 136
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter$special$$inlined$addType$5;-><init>(I)V

    .line 137
    .line 138
    .line 139
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_2
    invoke-virtual {p0}, Lcom/drake/brv/BindingAdapter;->y()Ljava/util/Map;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->typeOf(Ljava/lang/Class;)Lkotlin/reflect/KType;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter$special$$inlined$addType$6;

    .line 152
    .line 153
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter$special$$inlined$addType$6;-><init>(I)V

    .line 154
    .line 155
    .line 156
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    :goto_2
    new-instance p1, Lvh/h;

    .line 160
    .line 161
    invoke-direct {p1, p0}, Lvh/h;-><init>(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0, p1}, Lcom/drake/brv/BindingAdapter;->D(Lkotlin/jvm/functions/Function1;)V

    .line 165
    .line 166
    .line 167
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-virtual {p1, p0}, Lau/c;->p(Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    return-void
.end method

.method public static synthetic L(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;Lcom/drake/brv/BindingAdapter$BindingViewHolder;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;->X(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;Lcom/drake/brv/BindingAdapter$BindingViewHolder;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic M(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;Lcom/startshorts/androidplayer/bean/download/DownloadedManagerInfo;Lcom/drake/brv/BindingAdapter$BindingViewHolder;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;->h0(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;Lcom/startshorts/androidplayer/bean/download/DownloadedManagerInfo;Lcom/drake/brv/BindingAdapter$BindingViewHolder;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic N()F
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;->W()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static synthetic O(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;Lcom/drake/brv/BindingAdapter$BindingViewHolder;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;->e0(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;Lcom/drake/brv/BindingAdapter$BindingViewHolder;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic P(Lcom/startshorts/androidplayer/bean/download/DownloadedManagerInfo;Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;->g0(Lcom/startshorts/androidplayer/bean/download/DownloadedManagerInfo;Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Q()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;->U()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static synthetic R()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;->V()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static synthetic S(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;->d0(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic T(Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;->f0(Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final U()I
    .locals 1

    .line 1
    const/high16 v0, 0x42d00000    # 104.0f

    .line 2
    .line 3
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private static final V()I
    .locals 1

    .line 1
    const/high16 v0, 0x429c0000    # 78.0f

    .line 2
    .line 3
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private static final W()F
    .locals 1

    .line 1
    sget-object v0, Lfk/z;->a:Lfk/z;

    .line 2
    .line 3
    invoke-virtual {v0}, Lfk/z;->s()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    return v0
.end method

.method private static final X(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;Lcom/drake/brv/BindingAdapter$BindingViewHolder;)Lkotlin/Unit;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "b"

    .line 6
    .line 7
    const-string v3, "$this$onBind"

    .line 8
    .line 9
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    sget v4, Lcom/startshorts/androidplayer/R$layout;->item_download_drama_head:I

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    const-class v6, Landroid/view/View;

    .line 20
    .line 21
    if-ne v3, v4, :cond_3

    .line 22
    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->j()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Lcom/startshorts/androidplayer/bean/download/DownloadManagerHeader;

    .line 28
    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->l()Landroidx/viewbinding/ViewBinding;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    const-string v7, "null cannot be cast to non-null type com.startshorts.androidplayer.databinding.ItemDownloadDramaHeadBinding"

    .line 34
    .line 35
    if-nez v4, :cond_1

    .line 36
    .line 37
    filled-new-array {v6}, [Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    const-class v6, Lcom/startshorts/androidplayer/databinding/ItemDownloadDramaHeadBinding;

    .line 42
    .line 43
    invoke-virtual {v6, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 48
    .line 49
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v2, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    if-eqz v2, :cond_0

    .line 58
    .line 59
    check-cast v2, Lcom/startshorts/androidplayer/databinding/ItemDownloadDramaHeadBinding;

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->n(Landroidx/viewbinding/ViewBinding;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    .line 66
    .line 67
    invoke-direct {v0, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v0

    .line 71
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->l()Landroidx/viewbinding/ViewBinding;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    if-eqz v1, :cond_2

    .line 76
    .line 77
    move-object v2, v1

    .line 78
    check-cast v2, Lcom/startshorts/androidplayer/databinding/ItemDownloadDramaHeadBinding;

    .line 79
    .line 80
    :goto_0
    iget-object v0, v0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;->M:Landroidx/lifecycle/LifecycleOwner;

    .line 81
    .line 82
    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, v2, Lcom/startshorts/androidplayer/databinding/ItemDownloadDramaHeadBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 86
    .line 87
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/download/DownloadManagerHeader;->getTitle()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    .line 93
    .line 94
    goto/16 :goto_5

    .line 95
    .line 96
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    .line 97
    .line 98
    invoke-direct {v0, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw v0

    .line 102
    :cond_3
    sget v4, Lcom/startshorts/androidplayer/R$layout;->item_downloading_drama:I

    .line 103
    .line 104
    const/4 v7, 0x1

    .line 105
    const-string v8, "getRoot(...)"

    .line 106
    .line 107
    const/16 v9, 0x8

    .line 108
    .line 109
    const/4 v10, 0x0

    .line 110
    if-ne v3, v4, :cond_a

    .line 111
    .line 112
    invoke-virtual/range {p1 .. p1}, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->j()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    check-cast v3, Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;

    .line 117
    .line 118
    invoke-virtual/range {p1 .. p1}, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->l()Landroidx/viewbinding/ViewBinding;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    const-string v11, "null cannot be cast to non-null type com.startshorts.androidplayer.databinding.ItemDownloadingDramaBinding"

    .line 123
    .line 124
    if-nez v4, :cond_5

    .line 125
    .line 126
    filled-new-array {v6}, [Ljava/lang/Class;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    const-class v6, Lcom/startshorts/androidplayer/databinding/ItemDownloadingDramaBinding;

    .line 131
    .line 132
    invoke-virtual {v6, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 137
    .line 138
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-virtual {v2, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    if-eqz v2, :cond_4

    .line 147
    .line 148
    check-cast v2, Lcom/startshorts/androidplayer/databinding/ItemDownloadingDramaBinding;

    .line 149
    .line 150
    invoke-virtual {v1, v2}, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->n(Landroidx/viewbinding/ViewBinding;)V

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    .line 155
    .line 156
    invoke-direct {v0, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw v0

    .line 160
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->l()Landroidx/viewbinding/ViewBinding;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    if-eqz v2, :cond_9

    .line 165
    .line 166
    check-cast v2, Lcom/startshorts/androidplayer/databinding/ItemDownloadingDramaBinding;

    .line 167
    .line 168
    :goto_1
    iget-object v4, v0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;->M:Landroidx/lifecycle/LifecycleOwner;

    .line 169
    .line 170
    invoke-virtual {v2, v4}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 171
    .line 172
    .line 173
    iget-object v4, v2, Lcom/startshorts/androidplayer/databinding/ItemDownloadingDramaBinding;->a:Landroid/widget/ImageView;

    .line 174
    .line 175
    iget-boolean v5, v0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;->O:Z

    .line 176
    .line 177
    if-eqz v5, :cond_6

    .line 178
    .line 179
    move v9, v10

    .line 180
    :cond_6
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 181
    .line 182
    .line 183
    iget-object v4, v2, Lcom/startshorts/androidplayer/databinding/ItemDownloadingDramaBinding;->a:Landroid/widget/ImageView;

    .line 184
    .line 185
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;->getSelect()Z

    .line 186
    .line 187
    .line 188
    move-result v5

    .line 189
    if-eqz v5, :cond_7

    .line 190
    .line 191
    sget v5, Lcom/startshorts/androidplayer/R$drawable;->icon_checkbox_checked:I

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_7
    sget v5, Lcom/startshorts/androidplayer/R$drawable;->icon_checkbox_uncheck:I

    .line 195
    .line 196
    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 200
    .line 201
    .line 202
    move-result-object v11

    .line 203
    invoke-static {v11, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    new-instance v14, Lvh/i;

    .line 207
    .line 208
    invoke-direct {v14, v0, v3, v1}, Lvh/i;-><init>(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;Lcom/drake/brv/BindingAdapter$BindingViewHolder;)V

    .line 209
    .line 210
    .line 211
    const/4 v15, 0x1

    .line 212
    const/16 v16, 0x0

    .line 213
    .line 214
    const-wide/16 v12, 0x0

    .line 215
    .line 216
    invoke-static/range {v11 .. v16}, Ljk/b0;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    iget-object v4, v2, Lcom/startshorts/androidplayer/databinding/ItemDownloadingDramaBinding;->a:Landroid/widget/ImageView;

    .line 220
    .line 221
    new-instance v5, Lvh/j;

    .line 222
    .line 223
    invoke-direct {v5, v3, v0}, Lvh/j;-><init>(Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    .line 228
    .line 229
    sget-object v0, Lkk/f;->a:Lkk/f;

    .line 230
    .line 231
    iget-object v4, v2, Lcom/startshorts/androidplayer/databinding/ItemDownloadingDramaBinding;->b:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 232
    .line 233
    new-instance v5, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 234
    .line 235
    invoke-direct {v5}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;->getTaskInfoList()Ljava/util/List;

    .line 239
    .line 240
    .line 241
    move-result-object v6

    .line 242
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    check-cast v6, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 247
    .line 248
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getDramaCoverUrl()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v6

    .line 252
    invoke-virtual {v5, v6}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    sget-object v6, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;->S:Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter$a;

    .line 256
    .line 257
    invoke-static {v6}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter$a;->b(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter$a;)I

    .line 258
    .line 259
    .line 260
    move-result v8

    .line 261
    invoke-virtual {v5, v8}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 262
    .line 263
    .line 264
    invoke-static {v6}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter$a;->a(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter$a;)I

    .line 265
    .line 266
    .line 267
    move-result v8

    .line 268
    invoke-virtual {v5, v8}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 269
    .line 270
    .line 271
    invoke-static {v6}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter$a;->c(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter$a;)F

    .line 272
    .line 273
    .line 274
    move-result v6

    .line 275
    invoke-virtual {v5, v6}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerRadius(F)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v5, v7}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 279
    .line 280
    .line 281
    sget v6, Lcom/startshorts/androidplayer/R$drawable;->ic_cover_placeholder:I

    .line 282
    .line 283
    invoke-virtual {v5, v6}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 284
    .line 285
    .line 286
    sget-object v6, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 287
    .line 288
    invoke-virtual {v0, v4, v5}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;->getDownloadingItem()Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    if-nez v0, :cond_8

    .line 296
    .line 297
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 298
    .line 299
    return-object v0

    .line 300
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    .line 301
    .line 302
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    .line 304
    .line 305
    const-string v5, "download bindItem:"

    .line 306
    .line 307
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getDramaNum()I

    .line 311
    .line 312
    .line 313
    move-result v5

    .line 314
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    const-string v5, " and progress:"

    .line 318
    .line 319
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getShowProgress()I

    .line 323
    .line 324
    .line 325
    move-result v5

    .line 326
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v4

    .line 333
    invoke-static {v4}, Luh/s;->b(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    iget-object v4, v2, Lcom/startshorts/androidplayer/databinding/ItemDownloadingDramaBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 337
    .line 338
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;->getShortPlayName()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v5

    .line 342
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    .line 344
    .line 345
    iget-object v4, v2, Lcom/startshorts/androidplayer/databinding/ItemDownloadingDramaBinding;->c:Lcom/startshorts/androidplayer/ui/view/progress/GradientProgressBar;

    .line 346
    .line 347
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getShowProgress()I

    .line 348
    .line 349
    .line 350
    move-result v5

    .line 351
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/ui/view/progress/GradientProgressBar;->setProgress(I)V

    .line 352
    .line 353
    .line 354
    iget-object v4, v2, Lcom/startshorts/androidplayer/databinding/ItemDownloadingDramaBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 355
    .line 356
    invoke-virtual/range {p1 .. p1}, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->i()Landroid/content/Context;

    .line 357
    .line 358
    .line 359
    move-result-object v5

    .line 360
    sget v6, Lcom/startshorts/androidplayer/R$string;->common_current_ep:I

    .line 361
    .line 362
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getDramaNum()I

    .line 363
    .line 364
    .line 365
    move-result v7

    .line 366
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v7

    .line 370
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v7

    .line 374
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v5

    .line 378
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    .line 380
    .line 381
    iget-object v4, v2, Lcom/startshorts/androidplayer/databinding/ItemDownloadingDramaBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 382
    .line 383
    invoke-virtual/range {p1 .. p1}, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->i()Landroid/content/Context;

    .line 384
    .line 385
    .line 386
    move-result-object v1

    .line 387
    sget v5, Lcom/startshorts/androidplayer/R$string;->common_total_ep:I

    .line 388
    .line 389
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;->getDownloadingCount()I

    .line 390
    .line 391
    .line 392
    move-result v3

    .line 393
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v3

    .line 397
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v3

    .line 401
    invoke-virtual {v1, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    .line 407
    .line 408
    iget-object v1, v2, Lcom/startshorts/androidplayer/databinding/ItemDownloadingDramaBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 409
    .line 410
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getShowSpeed()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v3

    .line 414
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    .line 416
    .line 417
    iget-object v1, v2, Lcom/startshorts/androidplayer/databinding/ItemDownloadingDramaBinding;->h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 418
    .line 419
    new-instance v2, Ljava/lang/StringBuilder;

    .line 420
    .line 421
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getDownloadedSize()J

    .line 425
    .line 426
    .line 427
    move-result-wide v3

    .line 428
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 429
    .line 430
    .line 431
    move-result-object v3

    .line 432
    invoke-static {v3}, Luh/s;->a(Ljava/lang/Long;)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v3

    .line 436
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    const/16 v3, 0x2f

    .line 440
    .line 441
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getFileSize()J

    .line 445
    .line 446
    .line 447
    move-result-wide v3

    .line 448
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    invoke-static {v0}, Luh/s;->a(Ljava/lang/Long;)Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    .line 465
    .line 466
    goto/16 :goto_5

    .line 467
    .line 468
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    .line 469
    .line 470
    invoke-direct {v0, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    throw v0

    .line 474
    :cond_a
    sget v4, Lcom/startshorts/androidplayer/R$layout;->item_downloaded_drama:I

    .line 475
    .line 476
    if-ne v3, v4, :cond_10

    .line 477
    .line 478
    invoke-virtual/range {p1 .. p1}, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->j()Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v3

    .line 482
    check-cast v3, Lcom/startshorts/androidplayer/bean/download/DownloadedManagerInfo;

    .line 483
    .line 484
    invoke-virtual/range {p1 .. p1}, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->l()Landroidx/viewbinding/ViewBinding;

    .line 485
    .line 486
    .line 487
    move-result-object v4

    .line 488
    const-string v11, "null cannot be cast to non-null type com.startshorts.androidplayer.databinding.ItemDownloadedDramaBinding"

    .line 489
    .line 490
    if-nez v4, :cond_c

    .line 491
    .line 492
    filled-new-array {v6}, [Ljava/lang/Class;

    .line 493
    .line 494
    .line 495
    move-result-object v4

    .line 496
    const-class v6, Lcom/startshorts/androidplayer/databinding/ItemDownloadedDramaBinding;

    .line 497
    .line 498
    invoke-virtual {v6, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 499
    .line 500
    .line 501
    move-result-object v2

    .line 502
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 503
    .line 504
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object v4

    .line 508
    invoke-virtual {v2, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-result-object v2

    .line 512
    if-eqz v2, :cond_b

    .line 513
    .line 514
    check-cast v2, Lcom/startshorts/androidplayer/databinding/ItemDownloadedDramaBinding;

    .line 515
    .line 516
    invoke-virtual {v1, v2}, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->n(Landroidx/viewbinding/ViewBinding;)V

    .line 517
    .line 518
    .line 519
    goto :goto_3

    .line 520
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    .line 521
    .line 522
    invoke-direct {v0, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    throw v0

    .line 526
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->l()Landroidx/viewbinding/ViewBinding;

    .line 527
    .line 528
    .line 529
    move-result-object v2

    .line 530
    if-eqz v2, :cond_f

    .line 531
    .line 532
    check-cast v2, Lcom/startshorts/androidplayer/databinding/ItemDownloadedDramaBinding;

    .line 533
    .line 534
    :goto_3
    iget-object v4, v0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;->M:Landroidx/lifecycle/LifecycleOwner;

    .line 535
    .line 536
    invoke-virtual {v2, v4}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 537
    .line 538
    .line 539
    iget-object v4, v2, Lcom/startshorts/androidplayer/databinding/ItemDownloadedDramaBinding;->a:Landroid/widget/ImageView;

    .line 540
    .line 541
    iget-boolean v5, v0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;->O:Z

    .line 542
    .line 543
    if-eqz v5, :cond_d

    .line 544
    .line 545
    move v9, v10

    .line 546
    :cond_d
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 547
    .line 548
    .line 549
    iget-object v4, v2, Lcom/startshorts/androidplayer/databinding/ItemDownloadedDramaBinding;->a:Landroid/widget/ImageView;

    .line 550
    .line 551
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/download/DownloadedManagerInfo;->getSelect()Z

    .line 552
    .line 553
    .line 554
    move-result v5

    .line 555
    if-eqz v5, :cond_e

    .line 556
    .line 557
    sget v5, Lcom/startshorts/androidplayer/R$drawable;->icon_checkbox_checked:I

    .line 558
    .line 559
    goto :goto_4

    .line 560
    :cond_e
    sget v5, Lcom/startshorts/androidplayer/R$drawable;->icon_checkbox_uncheck:I

    .line 561
    .line 562
    :goto_4
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 563
    .line 564
    .line 565
    iget-object v4, v2, Lcom/startshorts/androidplayer/databinding/ItemDownloadedDramaBinding;->a:Landroid/widget/ImageView;

    .line 566
    .line 567
    new-instance v5, Lvh/k;

    .line 568
    .line 569
    invoke-direct {v5, v3, v0}, Lvh/k;-><init>(Lcom/startshorts/androidplayer/bean/download/DownloadedManagerInfo;Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;)V

    .line 570
    .line 571
    .line 572
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 573
    .line 574
    .line 575
    sget-object v4, Lkk/f;->a:Lkk/f;

    .line 576
    .line 577
    iget-object v5, v2, Lcom/startshorts/androidplayer/databinding/ItemDownloadedDramaBinding;->b:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 578
    .line 579
    new-instance v6, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 580
    .line 581
    invoke-direct {v6}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/download/DownloadedManagerInfo;->getTaskInfoList()Ljava/util/List;

    .line 585
    .line 586
    .line 587
    move-result-object v9

    .line 588
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 589
    .line 590
    .line 591
    move-result-object v9

    .line 592
    check-cast v9, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 593
    .line 594
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getDramaCoverUrl()Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v9

    .line 598
    invoke-virtual {v6, v9}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 599
    .line 600
    .line 601
    sget-object v9, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;->S:Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter$a;

    .line 602
    .line 603
    invoke-static {v9}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter$a;->b(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter$a;)I

    .line 604
    .line 605
    .line 606
    move-result v10

    .line 607
    invoke-virtual {v6, v10}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 608
    .line 609
    .line 610
    invoke-static {v9}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter$a;->a(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter$a;)I

    .line 611
    .line 612
    .line 613
    move-result v10

    .line 614
    invoke-virtual {v6, v10}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 615
    .line 616
    .line 617
    invoke-static {v9}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter$a;->c(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter$a;)F

    .line 618
    .line 619
    .line 620
    move-result v9

    .line 621
    invoke-virtual {v6, v9}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerRadius(F)V

    .line 622
    .line 623
    .line 624
    invoke-virtual {v6, v7}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 625
    .line 626
    .line 627
    sget v7, Lcom/startshorts/androidplayer/R$drawable;->ic_cover_placeholder:I

    .line 628
    .line 629
    invoke-virtual {v6, v7}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 630
    .line 631
    .line 632
    sget-object v7, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 633
    .line 634
    invoke-virtual {v4, v5, v6}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 635
    .line 636
    .line 637
    iget-object v4, v2, Lcom/startshorts/androidplayer/databinding/ItemDownloadedDramaBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 638
    .line 639
    invoke-virtual/range {p1 .. p1}, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->i()Landroid/content/Context;

    .line 640
    .line 641
    .line 642
    move-result-object v5

    .line 643
    sget v6, Lcom/startshorts/androidplayer/R$string;->common_total_ep:I

    .line 644
    .line 645
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/download/DownloadedManagerInfo;->getDownloadedCount()I

    .line 646
    .line 647
    .line 648
    move-result v7

    .line 649
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object v7

    .line 653
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 654
    .line 655
    .line 656
    move-result-object v7

    .line 657
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    move-result-object v5

    .line 661
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 662
    .line 663
    .line 664
    iget-object v4, v2, Lcom/startshorts/androidplayer/databinding/ItemDownloadedDramaBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 665
    .line 666
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/download/DownloadedManagerInfo;->getDramaName()Ljava/lang/String;

    .line 667
    .line 668
    .line 669
    move-result-object v5

    .line 670
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 671
    .line 672
    .line 673
    iget-object v4, v2, Lcom/startshorts/androidplayer/databinding/ItemDownloadedDramaBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 674
    .line 675
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/download/DownloadedManagerInfo;->getDramaContent()Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    move-result-object v5

    .line 679
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 680
    .line 681
    .line 682
    iget-object v4, v2, Lcom/startshorts/androidplayer/databinding/ItemDownloadedDramaBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 683
    .line 684
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/download/DownloadedManagerInfo;->getDownloadedSize()J

    .line 685
    .line 686
    .line 687
    move-result-wide v5

    .line 688
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 689
    .line 690
    .line 691
    move-result-object v5

    .line 692
    invoke-static {v5}, Luh/s;->a(Ljava/lang/Long;)Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object v5

    .line 696
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 697
    .line 698
    .line 699
    invoke-virtual {v2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 700
    .line 701
    .line 702
    move-result-object v9

    .line 703
    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 704
    .line 705
    .line 706
    new-instance v12, Lvh/l;

    .line 707
    .line 708
    invoke-direct {v12, v0, v3, v1}, Lvh/l;-><init>(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;Lcom/startshorts/androidplayer/bean/download/DownloadedManagerInfo;Lcom/drake/brv/BindingAdapter$BindingViewHolder;)V

    .line 709
    .line 710
    .line 711
    const/4 v13, 0x1

    .line 712
    const/4 v14, 0x0

    .line 713
    const-wide/16 v10, 0x0

    .line 714
    .line 715
    invoke-static/range {v9 .. v14}, Ljk/b0;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 716
    .line 717
    .line 718
    goto :goto_5

    .line 719
    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    .line 720
    .line 721
    invoke-direct {v0, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 722
    .line 723
    .line 724
    throw v0

    .line 725
    :cond_10
    :goto_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 726
    .line 727
    return-object v0
.end method

.method public static final synthetic Y()Lms/i;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;->U:Lms/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic Z()Lms/i;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;->T:Lms/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic a0()Lms/i;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;->V:Lms/i;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final d0(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;->N:Lcom/startshorts/androidplayer/ui/activity/download/DownloadManagerModel;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadManagerModel;->G()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;->n0()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method

.method private static final e0(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;Lcom/drake/brv/BindingAdapter$BindingViewHolder;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean p3, p0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;->O:Z

    .line 7
    .line 8
    if-eqz p3, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;->getSelect()Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    xor-int/lit8 p2, p2, 0x1

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;->setSelect(Z)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;->n0()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 23
    .line 24
    .line 25
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_0
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;->P:Lkotlin/jvm/functions/Function2;

    .line 29
    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->k()I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 44
    .line 45
    return-object p0
.end method

.method private static final f0(Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;->getSelect()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    xor-int/lit8 p2, p2, 0x1

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;->setSelect(Z)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;->n0()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private static final g0(Lcom/startshorts/androidplayer/bean/download/DownloadedManagerInfo;Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/download/DownloadedManagerInfo;->getSelect()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    xor-int/lit8 p2, p2, 0x1

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/bean/download/DownloadedManagerInfo;->setSelect(Z)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;->n0()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private static final h0(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;Lcom/startshorts/androidplayer/bean/download/DownloadedManagerInfo;Lcom/drake/brv/BindingAdapter$BindingViewHolder;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean p3, p0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;->O:Z

    .line 7
    .line 8
    if-eqz p3, :cond_0

    .line 9
    .line 10
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;->Q:Lkotlin/jvm/functions/Function2;

    .line 14
    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/drake/brv/BindingAdapter$BindingViewHolder;->k()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p0
.end method

.method private final n0()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;->R:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;->N:Lcom/startshorts/androidplayer/ui/activity/download/DownloadManagerModel;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadManagerModel;->C()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Ljava/lang/Iterable;

    .line 12
    .line 13
    instance-of v2, v1, Ljava/util/Collection;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    move-object v2, v1

    .line 19
    check-cast v2, Ljava/util/Collection;

    .line 20
    .line 21
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    move v2, v3

    .line 33
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_4

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Lcom/startshorts/androidplayer/bean/download/DownloadManagerItem;

    .line 44
    .line 45
    instance-of v5, v4, Lcom/startshorts/androidplayer/bean/download/DownloadedManagerInfo;

    .line 46
    .line 47
    if-eqz v5, :cond_2

    .line 48
    .line 49
    check-cast v4, Lcom/startshorts/androidplayer/bean/download/DownloadedManagerInfo;

    .line 50
    .line 51
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/download/DownloadedManagerInfo;->getSelect()Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    instance-of v5, v4, Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;

    .line 57
    .line 58
    if-eqz v5, :cond_3

    .line 59
    .line 60
    check-cast v4, Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;

    .line 61
    .line 62
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;->getSelect()Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    goto :goto_1

    .line 67
    :cond_3
    move v4, v3

    .line 68
    :goto_1
    if-eqz v4, :cond_1

    .line 69
    .line 70
    add-int/lit8 v2, v2, 0x1

    .line 71
    .line 72
    if-gez v2, :cond_1

    .line 73
    .line 74
    invoke-static {}, Lkotlin/collections/CollectionsKt;->x()V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    move v3, v2

    .line 79
    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    :cond_5
    return-void
.end method


# virtual methods
.method public final b0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;->O:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;->N:Lcom/startshorts/androidplayer/ui/activity/download/DownloadManagerModel;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadManagerModel;->C()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Iterable;

    .line 8
    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_3

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    move-object v3, v2

    .line 29
    check-cast v3, Lcom/startshorts/androidplayer/bean/download/DownloadManagerItem;

    .line 30
    .line 31
    instance-of v4, v3, Lcom/startshorts/androidplayer/bean/download/DownloadedManagerInfo;

    .line 32
    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    check-cast v3, Lcom/startshorts/androidplayer/bean/download/DownloadedManagerInfo;

    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/download/DownloadedManagerInfo;->getSelect()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    instance-of v4, v3, Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;

    .line 43
    .line 44
    if-eqz v4, :cond_2

    .line 45
    .line 46
    check-cast v3, Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;

    .line 47
    .line 48
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;->getSelect()Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    const/4 v3, 0x0

    .line 54
    :goto_1
    if-eqz v3, :cond_0

    .line 55
    .line 56
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableList(Ljava/lang/Object;)Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sget-object v1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->a:Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;

    .line 65
    .line 66
    new-instance v2, Lvh/g;

    .line 67
    .line 68
    invoke-direct {v2, p0}, Lvh/g;-><init>(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v0, v2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->R(Ljava/util/List;Lkotlin/jvm/functions/Function0;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public final handleDownloadStateEvent(Lcom/startshorts/androidplayer/ui/activity/download/b;)V
    .locals 3
    .param p1    # Lcom/startshorts/androidplayer/ui/activity/download/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Lcom/startshorts/androidplayer/ui/activity/download/b$d;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p1, Lcom/startshorts/androidplayer/ui/activity/download/b$d;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/download/b$d;->a()Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;->N:Lcom/startshorts/androidplayer/ui/activity/download/DownloadManagerModel;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadManagerModel;->C()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-lez v0, :cond_3

    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v2, "\u76d1\u542c\u901a\u77e5\u4e0b\u8f7d\u8fdb\u5ea6\u53d8\u5316\uff1a"

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p1}, Luh/s;->b(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/ui/activity/download/b$e;

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;->N:Lcom/startshorts/androidplayer/ui/activity/download/DownloadManagerModel;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadManagerModel;->G()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    instance-of v0, p1, Lcom/startshorts/androidplayer/ui/activity/download/b$f;

    .line 67
    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    check-cast p1, Lcom/startshorts/androidplayer/ui/activity/download/b$f;

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/download/b$f;->a()Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;->N:Lcom/startshorts/androidplayer/ui/activity/download/DownloadManagerModel;

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadManagerModel;->C()Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-lez v0, :cond_3

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getDownloadState()I

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    const/4 v0, 0x4

    .line 93
    if-ne p1, v0, :cond_2

    .line 94
    .line 95
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;->N:Lcom/startshorts/androidplayer/ui/activity/download/DownloadManagerModel;

    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadManagerModel;->G()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 105
    .line 106
    .line 107
    :cond_3
    :goto_0
    return-void
.end method

.method public final i0()V
    .locals 1

    .line 1
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lau/c;->r(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final j0(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;->N:Lcom/startshorts/androidplayer/ui/activity/download/DownloadManagerModel;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadManagerModel;->C()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Iterable;

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/startshorts/androidplayer/bean/download/DownloadManagerItem;

    .line 24
    .line 25
    instance-of v2, v1, Lcom/startshorts/androidplayer/bean/download/DownloadedManagerInfo;

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    move-object v2, v1

    .line 30
    check-cast v2, Lcom/startshorts/androidplayer/bean/download/DownloadedManagerInfo;

    .line 31
    .line 32
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/download/DownloadedManagerInfo;->setSelect(Z)V

    .line 33
    .line 34
    .line 35
    :cond_1
    instance-of v2, v1, Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;

    .line 36
    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    check-cast v1, Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;

    .line 40
    .line 41
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;->setSelect(Z)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;->n0()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final k0(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/startshorts/androidplayer/bean/download/DownloadedManagerInfo;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;->Q:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-void
.end method

.method public final l0(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/startshorts/androidplayer/bean/download/DownloadingManagerInfo;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;->P:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-void
.end method

.method public final m0(Lkotlin/jvm/functions/Function1;)V
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
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadManageAdapter;->R:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method
