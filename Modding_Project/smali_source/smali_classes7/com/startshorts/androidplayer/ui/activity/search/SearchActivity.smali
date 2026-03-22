.class public final Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;
.super Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;
.source "SearchActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity<",
        "Lcom/startshorts/androidplayer/bean/search/SearchModule;",
        "Lcom/startshorts/androidplayer/databinding/ActivitySearchBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSearchActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchActivity.kt\ncom/startshorts/androidplayer/ui/activity/search/SearchActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,883:1\n1872#2,3:884\n1863#2,2:888\n1863#2,2:890\n1755#2,3:892\n1557#2:895\n1628#2,3:896\n1#3:887\n*S KotlinDebug\n*F\n+ 1 SearchActivity.kt\ncom/startshorts/androidplayer/ui/activity/search/SearchActivity\n*L\n507#1:884,3\n581#1:888,2\n606#1:890,2\n798#1:892,3\n294#1:895\n294#1:896,3\n*E\n"
    }
.end annotation


# static fields
.field public static final V:Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final W:Lms/i;
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

.field private static final X:Lms/i;
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


# instance fields
.field private I:Lcom/startshorts/androidplayer/bean/search/SearchKey;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final J:Lcom/startshorts/androidplayer/bean/search/SearchModule$SearchHistoryModule;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final K:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final L:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final M:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final N:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private O:Z

.field private final P:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private Q:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private R:Z

.field private S:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private T:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private U:Lhi/b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->V:Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity$a;

    .line 8
    .line 9
    new-instance v0, Lbi/g;

    .line 10
    .line 11
    invoke-direct {v0}, Lbi/g;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->W:Lms/i;

    .line 19
    .line 20
    new-instance v0, Lbi/h;

    .line 21
    .line 22
    invoke-direct {v0}, Lbi/h;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->X:Lms/i;

    .line 30
    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/startshorts/androidplayer/bean/search/SearchModule$SearchHistoryModule;->INSTANCE:Lcom/startshorts/androidplayer/bean/search/SearchModule$SearchHistoryModule;

    .line 5
    .line 6
    sget-object v1, Lfk/z;->a:Lfk/z;

    .line 7
    .line 8
    invoke-virtual {v1}, Lfk/z;->g()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/search/SearchModule;->setTopMargin(I)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->J:Lcom/startshorts/androidplayer/bean/search/SearchModule$SearchHistoryModule;

    .line 16
    .line 17
    new-instance v0, Lbi/i;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lbi/i;-><init>(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->K:Lms/i;

    .line 27
    .line 28
    new-instance v0, Lbi/j;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lbi/j;-><init>(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->L:Lms/i;

    .line 38
    .line 39
    new-instance v0, Lbi/k;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lbi/k;-><init>(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->M:Lms/i;

    .line 49
    .line 50
    new-instance v0, Lbi/l;

    .line 51
    .line 52
    invoke-direct {v0, p0}, Lbi/l;-><init>(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->N:Lms/i;

    .line 60
    .line 61
    new-instance v0, Lbi/m;

    .line 62
    .line 63
    invoke-direct {v0}, Lbi/m;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->P:Lms/i;

    .line 71
    .line 72
    const-string v0, ""

    .line 73
    .line 74
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->S:Ljava/lang/String;

    .line 75
    .line 76
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->T:Ljava/lang/String;

    .line 77
    .line 78
    return-void
.end method

.method private static final A1(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->onBackPressed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final B1(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;Landroid/view/View;)V
    .locals 2

    .line 1
    const/4 p1, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p0, v1, p1, v0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->J1(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;ZILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private final C1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "from"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->T:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "recommended_search_param"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const-class v1, Lcom/startshorts/androidplayer/bean/search/SearchKey;

    .line 26
    .line 27
    invoke-static {v0, v1}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/startshorts/androidplayer/bean/search/SearchKey;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    :goto_0
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->I:Lcom/startshorts/androidplayer/bean/search/SearchKey;

    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v1, "loadParams -> mRecommendedSearchInfo = "

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->I:Lcom/startshorts/androidplayer/bean/search/SearchKey;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method private static final D1(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    .line 1
    const-string v0, "input_method"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    .line 8
    .line 9
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 13
    .line 14
    return-object p0
.end method

.method private static final E1()Lvf/a;
    .locals 1

    .line 1
    new-instance v0, Lvf/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lvf/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final F1(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;)Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->m1()Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-class v0, Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel;

    .line 12
    .line 13
    return-object p0
.end method

.method private static final G1(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;)Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->m1()Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-class v0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;

    .line 12
    .line 13
    return-object p0
.end method

.method private static final H1(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;)Landroidx/lifecycle/ViewModelProvider;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final I1(Z)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivitySearchBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivitySearchBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseEditText;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lkotlin/text/StringsKt;->v1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->S:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity;->d0()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "null cannot be cast to non-null type com.startshorts.androidplayer.adapter.search.SearchModuleAdapter"

    .line 32
    .line 33
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    check-cast v1, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->S:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;->c0(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    const/4 v2, 0x0

    .line 48
    if-lez v1, :cond_0

    .line 49
    .line 50
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->S:Ljava/lang/String;

    .line 51
    .line 52
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_0

    .line 57
    .line 58
    const/4 v1, 0x1

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    move v1, v2

    .line 61
    :goto_0
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->I:Lcom/startshorts/androidplayer/bean/search/SearchKey;

    .line 62
    .line 63
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->S:Ljava/lang/String;

    .line 64
    .line 65
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-nez v4, :cond_3

    .line 70
    .line 71
    if-nez v1, :cond_2

    .line 72
    .line 73
    if-eqz v3, :cond_2

    .line 74
    .line 75
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->n1()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/search/SearchKey;->getKey()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-nez v0, :cond_1

    .line 83
    .line 84
    const-string v0, ""

    .line 85
    .line 86
    :cond_1
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->L1(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const-string v0, "recommend"

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    sget v0, Lcom/startshorts/androidplayer/R$string;->search_activity_input_keyword_hint:I

    .line 93
    .line 94
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->x(I)V

    .line 95
    .line 96
    .line 97
    const-string v0, "none"

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_3
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->S:Ljava/lang/String;

    .line 101
    .line 102
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    const-string v6, "getDefault(...)"

    .line 107
    .line 108
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    const-string v5, "toLowerCase(...)"

    .line 116
    .line 117
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const/4 v5, 0x2

    .line 121
    const/4 v6, 0x0

    .line 122
    const-string v7, "tv"

    .line 123
    .line 124
    invoke-static {v4, v7, v2, v5, v6}, Lkotlin/text/StringsKt;->V(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-eqz v2, :cond_4

    .line 129
    .line 130
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->L1(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const-string v0, "redeem"

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_4
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->L1(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    const-string v0, "input"

    .line 140
    .line 141
    :goto_1
    if-eqz p1, :cond_7

    .line 142
    .line 143
    sget-object v4, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 144
    .line 145
    new-instance v6, Landroid/os/Bundle;

    .line 146
    .line 147
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 148
    .line 149
    .line 150
    const-string p1, "type"

    .line 151
    .line 152
    invoke-virtual {v6, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->S:Ljava/lang/String;

    .line 156
    .line 157
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    const-string v0, "content"

    .line 162
    .line 163
    if-nez p1, :cond_5

    .line 164
    .line 165
    if-nez v1, :cond_6

    .line 166
    .line 167
    if-eqz v3, :cond_6

    .line 168
    .line 169
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/search/SearchKey;->getKey()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-virtual {v6, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_5
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->S:Ljava/lang/String;

    .line 178
    .line 179
    invoke-virtual {v6, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    :cond_6
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 183
    .line 184
    const/4 v9, 0x4

    .line 185
    const/4 v10, 0x0

    .line 186
    const-string v5, "search_page_click"

    .line 187
    .line 188
    const-wide/16 v7, 0x0

    .line 189
    .line 190
    invoke-static/range {v4 .. v10}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    :cond_7
    return-void
.end method

.method static synthetic J1(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    const/4 p3, 0x1

    .line 2
    and-int/2addr p2, p3

    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    move p1, p3

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->I1(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final K1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->Q:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method private final L1(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->n1()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->S:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity;->d0()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "null cannot be cast to non-null type com.startshorts.androidplayer.adapter.search.SearchModuleAdapter"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    check-cast v0, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->S:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;->c0(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->j1()Lvf/a;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, p1}, Lvf/a;->b(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->l1()Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;->C()Landroidx/lifecycle/MutableLiveData;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/search/d;

    .line 46
    .line 47
    instance-of v1, v0, Lcom/startshorts/androidplayer/viewmodel/search/d$b;

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/search/d$b;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/search/d$b;->c()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    const-wide/16 v0, 0x3e8

    .line 61
    .line 62
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    move-object v0, v2

    .line 68
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v3, "searchExactly -> keyword = "

    .line 74
    .line 75
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {p0, v1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->l1()Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/search/c$b;

    .line 93
    .line 94
    invoke-direct {v3, p1, v0}, Lcom/startshorts/androidplayer/viewmodel/search/c$b;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;->E(Lcom/startshorts/androidplayer/viewmodel/search/c;)V

    .line 98
    .line 99
    .line 100
    invoke-static {p1}, Lkotlin/text/StringsKt;->v1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    const-string v3, "getDefault(...)"

    .line 113
    .line 114
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    const-string v1, "toLowerCase(...)"

    .line 122
    .line 123
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    const-string v1, "tv"

    .line 127
    .line 128
    const/4 v3, 0x2

    .line 129
    const/4 v4, 0x0

    .line 130
    invoke-static {v0, v1, v4, v3, v2}, Lkotlin/text/StringsKt;->V(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-nez v0, :cond_2

    .line 135
    .line 136
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->k1()Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/search/a$a;

    .line 141
    .line 142
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/viewmodel/search/a$a;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel;->B(Lcom/startshorts/androidplayer/viewmodel/search/a;)V

    .line 146
    .line 147
    .line 148
    :cond_2
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivitySearchBinding;

    .line 153
    .line 154
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivitySearchBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseEditText;

    .line 155
    .line 156
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    if-eqz p1, :cond_3

    .line 164
    .line 165
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    :cond_3
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 170
    .line 171
    .line 172
    return-void
.end method

.method public static synthetic M0(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->z1(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final M1(Lcom/startshorts/androidplayer/bean/search/RedeemCode;Z)V
    .locals 4

    .line 1
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/bean/eventbus/RefreshCollectListEvent;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/eventbus/RefreshCollectListEvent;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lau/c;->l(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->V0:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a;

    .line 14
    .line 15
    new-instance v1, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 16
    .line 17
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "redeem"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setFrom(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v2, 0x3

    .line 26
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setType(I)V

    .line 27
    .line 28
    .line 29
    new-instance v2, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;

    .line 30
    .line 31
    invoke-direct {v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/search/RedeemCode;->getShortPlayId()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsId(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/search/RedeemCode;->getShortPlayCode()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortPlayCode(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/search/RedeemCode;->getUpack()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setUpack(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setShortsInfo(Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;)V

    .line 56
    .line 57
    .line 58
    if-eqz p2, :cond_0

    .line 59
    .line 60
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setRedeemCode(Lcom/startshorts/androidplayer/bean/search/RedeemCode;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 64
    .line 65
    invoke-virtual {v0, p0, v1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a;->a(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public static synthetic N0(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;Lcom/startshorts/androidplayer/viewmodel/search/d;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->x1(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;Lcom/startshorts/androidplayer/viewmodel/search/d;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final N1(Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;)V
    .locals 3

    .line 1
    const-string v0, "directly_search"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->k1()Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/search/a$a;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->getShortPlayName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    const-string v2, ""

    .line 22
    .line 23
    :cond_0
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/viewmodel/search/a$a;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel;->B(Lcom/startshorts/androidplayer/viewmodel/search/a;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->V0:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a;

    .line 30
    .line 31
    new-instance v1, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 32
    .line 33
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setFrom(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 p2, 0x3

    .line 40
    invoke-virtual {v1, p2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setType(I)V

    .line 41
    .line 42
    .line 43
    new-instance p2, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;

    .line 44
    .line 45
    invoke-direct {p2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->getShortPlayId()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-virtual {p2, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsId(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->getShortPlayCode()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {p2, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortPlayCode(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->getShortPlayName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {p2, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsName(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->getCoverId()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {p2, v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setCover(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;->getUpack()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p2, p1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setUpack(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, p2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setShortsInfo(Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ActivitySearchBinding;

    .line 91
    .line 92
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ActivitySearchBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseEditText;

    .line 93
    .line 94
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setSearchString(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, p3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setModuleInfo(Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;)V

    .line 106
    .line 107
    .line 108
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 109
    .line 110
    invoke-virtual {v0, p0, v1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a;->a(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public static synthetic O0(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;Lcom/startshorts/androidplayer/viewmodel/search/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->t1(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;Lcom/startshorts/androidplayer/viewmodel/search/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic O1(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->N1(Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic P0(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;)Landroidx/lifecycle/ViewModelProvider;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->H1(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;)Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final P1()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->o1()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lhi/b;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lhi/b;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Lhi/b;->setCancelable(Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lfi/a;->show()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->U:Lhi/b;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic Q0()Lvf/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->E1()Lvf/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final Q1(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/search/SearchModule;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/base/ListActivity;->l0(Ljava/util/List;)Z

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity;->h0()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity;->e0()Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public static synthetic R0()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->a1()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method private final R1(ZZZLcom/startshorts/androidplayer/bean/search/SearchRankingResultV2;Lcom/startshorts/androidplayer/bean/search/SearchResult;Ljava/util/List;Ljava/lang/String;ZZILjava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ",
            "Lcom/startshorts/androidplayer/bean/search/SearchRankingResultV2;",
            "Lcom/startshorts/androidplayer/bean/search/SearchResult;",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;",
            ">;",
            "Ljava/lang/String;",
            "ZZI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x1

    .line 1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateModules searchHistory="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " noResult="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " popularAndRanking="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    if-eqz p4, :cond_0

    invoke-static/range {p4 .. p4}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v5

    :goto_0
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " exactly="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_1

    invoke-virtual/range {p5 .. p5}, Lcom/startshorts/androidplayer/bean/search/SearchResult;->getShortPlays()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_1

    :cond_1
    move-object v6, v5

    :goto_1
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " code="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_2

    invoke-virtual/range {p5 .. p5}, Lcom/startshorts/androidplayer/bean/search/SearchResult;->getCodeInfo()Lcom/startshorts/androidplayer/bean/search/RedeemCode;

    move-result-object v6

    goto :goto_2

    :cond_2
    move-object v6, v5

    :goto_2
    const/4 v7, 0x0

    if-eqz v6, :cond_3

    move v6, v3

    goto :goto_3

    :cond_3
    move v6, v7

    :goto_3
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " vip="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_4

    invoke-virtual/range {p5 .. p5}, Lcom/startshorts/androidplayer/bean/search/SearchResult;->getMemberInfo()Lcom/startshorts/androidplayer/bean/search/RedeemCodeVip;

    move-result-object v6

    goto :goto_4

    :cond_4
    move-object v6, v5

    :goto_4
    if-eqz v6, :cond_5

    move v6, v3

    goto :goto_5

    :cond_5
    move v6, v7

    :goto_5
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " fuzzy="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p6, :cond_6

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_6

    :cond_6
    move-object v6, v5

    :goto_6
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_7

    .line 3
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->k1()Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel;

    move-result-object v1

    sget-object v6, Lcom/startshorts/androidplayer/viewmodel/search/a$c;->a:Lcom/startshorts/androidplayer/viewmodel/search/a$c;

    invoke-virtual {v1, v6}, Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel;->B(Lcom/startshorts/androidplayer/viewmodel/search/a;)V

    .line 4
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->J:Lcom/startshorts/androidplayer/bean/search/SearchModule$SearchHistoryModule;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    if-eqz p9, :cond_8

    if-eqz p4, :cond_8

    .line 5
    invoke-virtual/range {p4 .. p4}, Lcom/startshorts/androidplayer/bean/search/SearchRankingResultV2;->getHotResponseList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    .line 7
    new-instance v6, Lcom/startshorts/androidplayer/bean/search/SearchModule$YouMightLikeModule;

    invoke-direct {v6, v1}, Lcom/startshorts/androidplayer/bean/search/SearchModule$YouMightLikeModule;-><init>(Ljava/util/List;)V

    .line 8
    sget-object v1, Lfk/z;->a:Lfk/z;

    invoke-virtual {v1}, Lfk/z;->d()I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/startshorts/androidplayer/bean/search/SearchModule;->setTopMargin(I)V

    .line 9
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    if-eqz p8, :cond_9

    .line 10
    sget-object v1, Lcom/startshorts/androidplayer/bean/search/SearchModule$ActBannerModule;->INSTANCE:Lcom/startshorts/androidplayer/bean/search/SearchModule$ActBannerModule;

    .line 11
    sget-object v6, Lfk/z;->a:Lfk/z;

    invoke-virtual {v6}, Lfk/z;->d()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/startshorts/androidplayer/bean/search/SearchModule;->setTopMargin(I)V

    .line 12
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_9
    const-string v1, "no_result"

    const-string v6, "type"

    if-eqz v2, :cond_a

    .line 14
    sget-object v8, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 15
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 16
    invoke-virtual {v10, v6, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    const/4 v13, 0x4

    const/4 v14, 0x0

    .line 18
    const-string v9, "search_result_show"

    const-wide/16 v11, 0x0

    invoke-static/range {v8 .. v14}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 19
    sget-object v2, Lcom/startshorts/androidplayer/bean/search/SearchModule$NoResultModule;->INSTANCE:Lcom/startshorts/androidplayer/bean/search/SearchModule$NoResultModule;

    .line 20
    sget-object v8, Lfk/z;->a:Lfk/z;

    invoke-virtual {v8}, Lfk/z;->e()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/startshorts/androidplayer/bean/search/SearchModule;->setTopMargin(I)V

    .line 21
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    if-eqz p3, :cond_b

    .line 22
    sget-object v9, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 23
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 24
    invoke-virtual {v11, v6, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    const/4 v14, 0x4

    const/4 v15, 0x0

    .line 26
    const-string v10, "search_result_show"

    const-wide/16 v12, 0x0

    invoke-static/range {v9 .. v15}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 27
    sget-object v1, Lcom/startshorts/androidplayer/bean/search/SearchModule$NetworkErrorModule;->INSTANCE:Lcom/startshorts/androidplayer/bean/search/SearchModule$NetworkErrorModule;

    .line 28
    sget-object v2, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->V:Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity$a;

    invoke-static {v2}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity$a;->a(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity$a;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/search/SearchModule;->setTopMargin(I)V

    .line 29
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    if-eqz p4, :cond_c

    .line 30
    invoke-virtual/range {p4 .. p4}, Lcom/startshorts/androidplayer/bean/search/SearchRankingResultV2;->getTopResponseList()Ljava/util/List;

    move-result-object v1

    goto :goto_7

    :cond_c
    move-object v1, v5

    :goto_7
    if-eqz v1, :cond_f

    .line 31
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v3

    if-ne v2, v3, :cond_f

    .line 32
    sget-object v8, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    const/4 v13, 0x6

    const/4 v14, 0x0

    const-string v9, "search_all_show"

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    invoke-static/range {v8 .. v14}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 33
    check-cast v1, Ljava/lang/Iterable;

    .line 34
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v7

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v9, v2, 0x1

    if-gez v2, :cond_d

    invoke-static {}, Lkotlin/collections/CollectionsKt;->y()V

    :cond_d
    check-cast v8, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;

    if-nez v2, :cond_e

    .line 35
    new-instance v2, Lcom/startshorts/androidplayer/bean/search/SearchModule$PopularTitleModule;

    invoke-direct {v2, v8}, Lcom/startshorts/androidplayer/bean/search/SearchModule$PopularTitleModule;-><init>(Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;)V

    .line 36
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 37
    :cond_e
    new-instance v2, Lcom/startshorts/androidplayer/bean/search/SearchModule$PopularEpisodeModule;

    invoke-direct {v2, v8}, Lcom/startshorts/androidplayer/bean/search/SearchModule$PopularEpisodeModule;-><init>(Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;)V

    .line 38
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_9
    move v2, v9

    goto :goto_8

    :cond_f
    if-eqz p5, :cond_18

    .line 39
    invoke-virtual/range {p5 .. p5}, Lcom/startshorts/androidplayer/bean/search/SearchResult;->getShortPlays()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual/range {p5 .. p5}, Lcom/startshorts/androidplayer/bean/search/SearchResult;->getCodeInfo()Lcom/startshorts/androidplayer/bean/search/RedeemCode;

    move-result-object v1

    if-nez v1, :cond_10

    invoke-virtual/range {p5 .. p5}, Lcom/startshorts/androidplayer/bean/search/SearchResult;->getMemberInfo()Lcom/startshorts/androidplayer/bean/search/RedeemCodeVip;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 40
    :cond_10
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 41
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 42
    const-string v2, "have_result"

    invoke-virtual {v10, v6, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    const/4 v13, 0x4

    const/4 v14, 0x0

    .line 44
    const-string v9, "search_result_show"

    const-wide/16 v11, 0x0

    move-object v8, v1

    invoke-static/range {v8 .. v14}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 45
    invoke-virtual/range {p5 .. p5}, Lcom/startshorts/androidplayer/bean/search/SearchResult;->getMemberInfo()Lcom/startshorts/androidplayer/bean/search/RedeemCodeVip;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 46
    invoke-virtual/range {p5 .. p5}, Lcom/startshorts/androidplayer/bean/search/SearchResult;->getMemberInfo()Lcom/startshorts/androidplayer/bean/search/RedeemCodeVip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/search/RedeemCodeVip;->getMsg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_11

    goto :goto_a

    :cond_11
    move-object v1, v5

    :goto_a
    if-eqz v1, :cond_12

    .line 47
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->y(Ljava/lang/String;)V

    .line 48
    :cond_12
    sget-object v1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    const/4 v2, 0x3

    invoke-static {v1, v7, v5, v2, v5}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->c1(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    goto/16 :goto_d

    .line 49
    :cond_13
    invoke-virtual/range {p5 .. p5}, Lcom/startshorts/androidplayer/bean/search/SearchResult;->getCodeInfo()Lcom/startshorts/androidplayer/bean/search/RedeemCode;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 50
    invoke-virtual/range {p5 .. p5}, Lcom/startshorts/androidplayer/bean/search/SearchResult;->getCodeInfo()Lcom/startshorts/androidplayer/bean/search/RedeemCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/search/RedeemCode;->getCollectShort()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 51
    sget-object v2, Lcom/startshorts/androidplayer/manager/redpoint/RedPointManager;->a:Lcom/startshorts/androidplayer/manager/redpoint/RedPointManager;

    invoke-virtual/range {p5 .. p5}, Lcom/startshorts/androidplayer/bean/search/SearchResult;->getCodeInfo()Lcom/startshorts/androidplayer/bean/search/RedeemCode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/search/RedeemCode;->getShortPlayId()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/startshorts/androidplayer/manager/redpoint/RedPointManager;->b(I)V

    .line 52
    :cond_14
    invoke-virtual/range {p5 .. p5}, Lcom/startshorts/androidplayer/bean/search/SearchResult;->getCodeInfo()Lcom/startshorts/androidplayer/bean/search/RedeemCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/search/RedeemCode;->getStatus()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_b

    .line 53
    :pswitch_0
    sget v2, Lcom/startshorts/androidplayer/R$string;->search_activity_redeem_code_unsupported:I

    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->x(I)V

    .line 54
    invoke-virtual/range {p5 .. p5}, Lcom/startshorts/androidplayer/bean/search/SearchResult;->getCodeInfo()Lcom/startshorts/androidplayer/bean/search/RedeemCode;

    move-result-object v2

    invoke-direct {v0, v2, v7}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->M1(Lcom/startshorts/androidplayer/bean/search/RedeemCode;Z)V

    goto :goto_b

    .line 55
    :pswitch_1
    sget v2, Lcom/startshorts/androidplayer/R$string;->search_activity_redeem_code_delisted:I

    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->x(I)V

    goto :goto_b

    .line 56
    :pswitch_2
    sget v2, Lcom/startshorts/androidplayer/R$string;->search_activity_redeem_code_overdue:I

    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->x(I)V

    .line 57
    invoke-virtual/range {p5 .. p5}, Lcom/startshorts/androidplayer/bean/search/SearchResult;->getCodeInfo()Lcom/startshorts/androidplayer/bean/search/RedeemCode;

    move-result-object v2

    invoke-direct {v0, v2, v7}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->M1(Lcom/startshorts/androidplayer/bean/search/RedeemCode;Z)V

    goto :goto_b

    .line 58
    :pswitch_3
    sget v2, Lcom/startshorts/androidplayer/R$string;->search_activity_redeem_code_use_up:I

    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->x(I)V

    .line 59
    invoke-virtual/range {p5 .. p5}, Lcom/startshorts/androidplayer/bean/search/SearchResult;->getCodeInfo()Lcom/startshorts/androidplayer/bean/search/RedeemCode;

    move-result-object v2

    invoke-direct {v0, v2, v7}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->M1(Lcom/startshorts/androidplayer/bean/search/RedeemCode;Z)V

    goto :goto_b

    .line 60
    :pswitch_4
    sget v2, Lcom/startshorts/androidplayer/R$string;->search_activity_redeem_code_disabled:I

    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->x(I)V

    goto :goto_b

    .line 61
    :pswitch_5
    invoke-virtual/range {p5 .. p5}, Lcom/startshorts/androidplayer/bean/search/SearchResult;->getCodeInfo()Lcom/startshorts/androidplayer/bean/search/RedeemCode;

    move-result-object v2

    .line 62
    invoke-virtual/range {p5 .. p5}, Lcom/startshorts/androidplayer/bean/search/SearchResult;->getCodeInfo()Lcom/startshorts/androidplayer/bean/search/RedeemCode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/search/RedeemCode;->getEquity()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v3

    .line 63
    invoke-direct {v0, v2, v5}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->M1(Lcom/startshorts/androidplayer/bean/search/RedeemCode;Z)V

    .line 64
    :goto_b
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 65
    sget-object v2, Lcom/startshorts/androidplayer/bean/search/RedeemCode;->Companion:Lcom/startshorts/androidplayer/bean/search/RedeemCode$Companion;

    invoke-virtual/range {p5 .. p5}, Lcom/startshorts/androidplayer/bean/search/SearchResult;->getCodeInfo()Lcom/startshorts/androidplayer/bean/search/RedeemCode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/search/RedeemCode;->getEquity()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/startshorts/androidplayer/bean/search/RedeemCode$Companion;->getEquityListStr(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual/range {p5 .. p5}, Lcom/startshorts/androidplayer/bean/search/SearchResult;->getCodeInfo()Lcom/startshorts/androidplayer/bean/search/RedeemCode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/search/RedeemCode;->getStatus()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/startshorts/androidplayer/bean/search/RedeemCode$Companion;->getStatusStr(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "valid"

    invoke-virtual {v10, v5, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x4

    const/4 v14, 0x0

    .line 67
    const-string v9, "rights_popup_display"

    const-wide/16 v11, 0x0

    move-object v8, v1

    invoke-static/range {v8 .. v14}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    goto :goto_d

    .line 68
    :cond_15
    sget-object v1, Lfk/z;->a:Lfk/z;

    invoke-virtual {v1}, Lfk/z;->g()I

    move-result v1

    .line 69
    invoke-virtual/range {p5 .. p5}, Lcom/startshorts/androidplayer/bean/search/SearchResult;->getShortPlays()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 70
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;

    .line 71
    new-instance v6, Lcom/startshorts/androidplayer/bean/search/SearchModule$ExactlyEpisodeModule;

    invoke-direct {v6, v5}, Lcom/startshorts/androidplayer/bean/search/SearchModule$ExactlyEpisodeModule;-><init>(Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;)V

    .line 72
    invoke-virtual {v6, v1}, Lcom/startshorts/androidplayer/bean/search/SearchModule;->setTopMargin(I)V

    .line 73
    sget-object v1, Lfk/z;->a:Lfk/z;

    invoke-virtual {v1}, Lfk/z;->b()I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/startshorts/androidplayer/bean/search/SearchModule;->setBottomMargin(I)V

    .line 74
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v7

    goto :goto_c

    .line 75
    :cond_16
    invoke-virtual/range {p5 .. p5}, Lcom/startshorts/androidplayer/bean/search/SearchResult;->getShortPlays()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x14

    if-ge v1, v2, :cond_17

    .line 76
    invoke-virtual {v0, v7}, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->K0(Z)V

    .line 77
    sget-object v1, Lcom/startshorts/androidplayer/bean/search/SearchModule$NoMoreResultModule;->INSTANCE:Lcom/startshorts/androidplayer/bean/search/SearchModule$NoMoreResultModule;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 78
    :cond_17
    invoke-virtual {v0, v3}, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->K0(Z)V

    :cond_18
    :goto_d
    if-eqz p6, :cond_1a

    .line 79
    iget-boolean v1, v0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->O:Z

    if-nez v1, :cond_19

    .line 80
    sget-object v5, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    const/4 v10, 0x6

    const/4 v11, 0x0

    const-string v6, "fuzzy_search_display"

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-static/range {v5 .. v11}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 81
    :cond_19
    iput-boolean v3, v0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->O:Z

    .line 82
    move-object/from16 v1, p6

    check-cast v1, Ljava/lang/Iterable;

    .line 83
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;

    .line 84
    new-instance v3, Lcom/startshorts/androidplayer/bean/search/SearchModule$FuzzyEpisodeModule;

    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/bean/search/SearchModule$FuzzyEpisodeModule;-><init>(Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;)V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 85
    :cond_1a
    iput-boolean v7, v0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->O:Z

    :cond_1b
    if-nez p5, :cond_1c

    .line 86
    sget-object v1, Lcom/startshorts/androidplayer/bean/search/SearchModule$BottomPaddingModule;->INSTANCE:Lcom/startshorts/androidplayer/bean/search/SearchModule$BottomPaddingModule;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_1c
    invoke-direct {v0, v4}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->Q1(Ljava/util/List;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic S0()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->b1()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method static synthetic S1(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;ZZZLcom/startshorts/androidplayer/bean/search/SearchRankingResultV2;Lcom/startshorts/androidplayer/bean/search/SearchResult;Ljava/util/List;Ljava/lang/String;ZZILjava/lang/String;ILjava/lang/Object;)V
    .locals 2

    .line 1
    and-int/lit8 p13, p12, 0x1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p13, :cond_0

    .line 5
    .line 6
    move p1, v0

    .line 7
    :cond_0
    and-int/lit8 p13, p12, 0x2

    .line 8
    .line 9
    if-eqz p13, :cond_1

    .line 10
    .line 11
    move p2, v0

    .line 12
    :cond_1
    and-int/lit8 p13, p12, 0x4

    .line 13
    .line 14
    if-eqz p13, :cond_2

    .line 15
    .line 16
    move p3, v0

    .line 17
    :cond_2
    and-int/lit8 p13, p12, 0x8

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz p13, :cond_3

    .line 21
    .line 22
    move-object p4, v1

    .line 23
    :cond_3
    and-int/lit8 p13, p12, 0x10

    .line 24
    .line 25
    if-eqz p13, :cond_4

    .line 26
    .line 27
    move-object p5, v1

    .line 28
    :cond_4
    and-int/lit8 p13, p12, 0x20

    .line 29
    .line 30
    if-eqz p13, :cond_5

    .line 31
    .line 32
    move-object p6, v1

    .line 33
    :cond_5
    and-int/lit8 p13, p12, 0x40

    .line 34
    .line 35
    const-string v1, ""

    .line 36
    .line 37
    if-eqz p13, :cond_6

    .line 38
    .line 39
    move-object p7, v1

    .line 40
    :cond_6
    and-int/lit16 p13, p12, 0x80

    .line 41
    .line 42
    if-eqz p13, :cond_7

    .line 43
    .line 44
    move p8, v0

    .line 45
    :cond_7
    and-int/lit16 p13, p12, 0x100

    .line 46
    .line 47
    if-eqz p13, :cond_8

    .line 48
    .line 49
    move p9, v0

    .line 50
    :cond_8
    and-int/lit16 p13, p12, 0x200

    .line 51
    .line 52
    if-eqz p13, :cond_9

    .line 53
    .line 54
    move p10, v0

    .line 55
    :cond_9
    and-int/lit16 p12, p12, 0x400

    .line 56
    .line 57
    if-eqz p12, :cond_a

    .line 58
    .line 59
    move-object p11, v1

    .line 60
    :cond_a
    invoke-direct/range {p0 .. p11}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->R1(ZZZLcom/startshorts/androidplayer/bean/search/SearchRankingResultV2;Lcom/startshorts/androidplayer/bean/search/SearchResult;Ljava/util/List;Ljava/lang/String;ZZILjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public static synthetic T0(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->v1(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic U0(Landroid/view/View;Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->r1(Landroid/view/View;Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic V0(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;)Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->G1(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;)Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic W0(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->B1(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic X0(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->A1(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Y0(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;)Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->F1(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;)Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Z0(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->D1(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;)Landroid/view/inputmethod/InputMethodManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final a1()I
    .locals 1

    .line 1
    const/high16 v0, 0x42da0000    # 109.0f

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

.method private static final b1()I
    .locals 1

    .line 1
    const/high16 v0, 0x41c80000    # 25.0f

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

.method public static final synthetic c1()Lms/i;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->W:Lms/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic d1(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;)Lcom/startshorts/androidplayer/databinding/ActivitySearchBinding;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/startshorts/androidplayer/databinding/ActivitySearchBinding;

    .line 6
    .line 7
    return-object p0
.end method

.method public static final synthetic e1(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;)Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->k1()Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic f1(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;)Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->l1()Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic g1(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->I1(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final h1()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity;->c0()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Iterable;

    .line 9
    .line 10
    instance-of v2, v0, Ljava/util/Collection;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    move-object v2, v0

    .line 15
    check-cast v2, Ljava/util/Collection;

    .line 16
    .line 17
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lcom/startshorts/androidplayer/bean/search/SearchModule;

    .line 39
    .line 40
    instance-of v2, v2, Lcom/startshorts/androidplayer/bean/search/SearchModule$SearchHistoryModule;

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    :cond_2
    :goto_0
    return v1
.end method

.method private final i1()Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->N:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 8
    .line 9
    return-object v0
.end method

.method private final j1()Lvf/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->P:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lvf/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final k1()Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->L:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final l1()Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->M:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final m1()Landroidx/lifecycle/ViewModelProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->K:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/ViewModelProvider;

    .line 8
    .line 9
    return-object v0
.end method

.method private final n1()V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivitySearchBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivitySearchBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseEditText;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->i1()Landroid/view/inputmethod/InputMethodManager;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, v0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const-string v1, "hideSoftInputFromWindow"

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->i1()Landroid/view/inputmethod/InputMethodManager;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v2, "hideSoftInputFromWindow exception -> "

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :goto_2
    return-void
.end method

.method private final o1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->U:Lhi/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->U:Lhi/b;

    .line 10
    .line 11
    return-void
.end method

.method private final p1()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->j1()Lvf/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lvf/a;->d()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final q1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "getDecorView(...)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lbi/f;

    .line 15
    .line 16
    invoke-direct {v1, v0, p0}, Lbi/f;-><init>(Landroid/view/View;Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->Q:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->Q:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private static final r1(Landroid/view/View;Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    new-instance v1, Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 15
    .line 16
    .line 17
    iget p0, v1, Landroid/graphics/Rect;->bottom:I

    .line 18
    .line 19
    sub-int p0, v0, p0

    .line 20
    .line 21
    int-to-double v1, p0

    .line 22
    int-to-double v3, v0

    .line 23
    const-wide v5, 0x3fc3333333333333L    # 0.15

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    mul-double/2addr v3, v5

    .line 29
    cmpg-double p0, v1, v3

    .line 30
    .line 31
    if-gtz p0, :cond_0

    .line 32
    .line 33
    iget-boolean p0, p1, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->R:Z

    .line 34
    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    const-string p0, "keyboard close"

    .line 38
    .line 39
    invoke-virtual {p1, p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    iput-boolean p0, p1, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->R:Z

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    check-cast p0, Lcom/startshorts/androidplayer/databinding/ActivitySearchBinding;

    .line 50
    .line 51
    iget-object p0, p0, Lcom/startshorts/androidplayer/databinding/ActivitySearchBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseEditText;

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget-boolean p0, p1, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->R:Z

    .line 58
    .line 59
    if-nez p0, :cond_1

    .line 60
    .line 61
    const/4 p0, 0x1

    .line 62
    iput-boolean p0, p1, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->R:Z

    .line 63
    .line 64
    const-string p0, "keyboard show"

    .line 65
    .line 66
    invoke-virtual {p1, p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    :goto_0
    return-void
.end method

.method private final s1()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->k1()Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel;->A()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lbi/a;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lbi/a;-><init>(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity$e;

    .line 15
    .line 16
    invoke-direct {v2, v1}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity$e;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private static final t1(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;Lcom/startshorts/androidplayer/viewmodel/search/b;)Lkotlin/Unit;
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "mSearchHistoryViewModel.mState.observe -> SearchHistoryState="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/search/b$a;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    new-instance p1, Lcom/startshorts/androidplayer/bean/tip/Builder;

    .line 26
    .line 27
    invoke-direct {p1}, Lcom/startshorts/androidplayer/bean/tip/Builder;-><init>()V

    .line 28
    .line 29
    .line 30
    sget v0, Lcom/startshorts/androidplayer/R$string;->search_activity_clear_history_hint:I

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/bean/tip/Builder;->setContent(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sget v0, Lcom/startshorts/androidplayer/R$string;->common_confirm:I

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/bean/tip/Builder;->setPositiveButtonText(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    new-instance v0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity$d;

    .line 49
    .line 50
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity$d;-><init>(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/bean/tip/Builder;->setPositiveButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    .line 55
    .line 56
    sget v0, Lcom/startshorts/androidplayer/R$string;->common_cancel:I

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/bean/tip/Builder;->setNegativeButtonText(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    new-instance v0, Lli/c;

    .line 66
    .line 67
    invoke-direct {v0, p0, p1}, Lli/c;-><init>(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/tip/Builder;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Lfi/a;->show()V

    .line 71
    .line 72
    .line 73
    goto/16 :goto_0

    .line 74
    .line 75
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/search/b$b;

    .line 76
    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/search/b$b;

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/search/b$b;->a()Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_1

    .line 90
    .line 91
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->J:Lcom/startshorts/androidplayer/bean/search/SearchModule$SearchHistoryModule;

    .line 92
    .line 93
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/base/ListActivity;->Y(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    :cond_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/search/b$b;->a()Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    check-cast p1, Ljava/util/Collection;

    .line 101
    .line 102
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-nez p1, :cond_4

    .line 107
    .line 108
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->l1()Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;->C()Landroidx/lifecycle/MutableLiveData;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    instance-of p1, p1, Lcom/startshorts/androidplayer/viewmodel/search/d$a;

    .line 121
    .line 122
    if-eqz p1, :cond_4

    .line 123
    .line 124
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->h1()Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-nez p1, :cond_4

    .line 129
    .line 130
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->l1()Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    sget-object p1, Lcom/startshorts/androidplayer/viewmodel/search/c$a;->a:Lcom/startshorts/androidplayer/viewmodel/search/c$a;

    .line 135
    .line 136
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;->E(Lcom/startshorts/androidplayer/viewmodel/search/c;)V

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_2
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/search/b$d;

    .line 141
    .line 142
    const-string v1, "content"

    .line 143
    .line 144
    if-eqz v0, :cond_3

    .line 145
    .line 146
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 147
    .line 148
    new-instance v4, Landroid/os/Bundle;

    .line 149
    .line 150
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 151
    .line 152
    .line 153
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/search/b$d;

    .line 154
    .line 155
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/search/b$d;->a()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v4, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 163
    .line 164
    const/4 v7, 0x4

    .line 165
    const/4 v8, 0x0

    .line 166
    const-string v3, "search_history_click"

    .line 167
    .line 168
    const-wide/16 v5, 0x0

    .line 169
    .line 170
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/search/b$d;->a()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->L1(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    goto :goto_0

    .line 181
    :cond_3
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/search/b$c;

    .line 182
    .line 183
    if-eqz v0, :cond_4

    .line 184
    .line 185
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 186
    .line 187
    new-instance v4, Landroid/os/Bundle;

    .line 188
    .line 189
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 190
    .line 191
    .line 192
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/search/b$c;

    .line 193
    .line 194
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/search/b$c;->a()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {v4, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 202
    .line 203
    const/4 v7, 0x4

    .line 204
    const/4 v8, 0x0

    .line 205
    const-string v3, "search_hot_click"

    .line 206
    .line 207
    const-wide/16 v5, 0x0

    .line 208
    .line 209
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/search/b$c;->a()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->L1(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    :cond_4
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 220
    .line 221
    return-object p0
.end method

.method private final u1()V
    .locals 3

    .line 1
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/startshorts/androidplayer/databinding/ActivitySearchBinding;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ActivitySearchBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseEditText;

    .line 13
    .line 14
    const/4 v2, 0x3

    .line 15
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 16
    .line 17
    .line 18
    new-instance v2, Lbi/e;

    .line 19
    .line 20
    invoke-direct {v2, p0}, Lbi/e;-><init>(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 24
    .line 25
    .line 26
    new-instance v2, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity$initSearchLabelEdt$1$2;

    .line 27
    .line 28
    invoke-direct {v2, v0, p0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity$initSearchLabelEdt$1$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private static final v1(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    const/4 p1, 0x3

    .line 2
    const/4 p3, 0x0

    .line 3
    if-ne p2, p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    const/4 p2, 0x1

    .line 7
    invoke-static {p0, p3, p2, p1}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->J1(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;ZILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    move p3, p2

    .line 11
    :cond_0
    return p3
.end method

.method private final w1()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->l1()Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;->C()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lbi/d;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lbi/d;-><init>(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity$e;

    .line 15
    .line 16
    invoke-direct {v2, v1}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity$e;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private static final x1(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;Lcom/startshorts/androidplayer/viewmodel/search/d;)Lkotlin/Unit;
    .locals 17

    .line 1
    move-object/from16 v14, p0

    .line 2
    .line 3
    move-object/from16 v6, p1

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "mSearchViewModel.mState.observe -> SearchState="

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v14, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    instance-of v0, v6, Lcom/startshorts/androidplayer/viewmodel/search/d$a;

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    const/4 v15, 0x0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->o1()V

    .line 32
    .line 33
    .line 34
    move-object v0, v6

    .line 35
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/search/d$a;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/search/d$a;->b()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/search/d$a;->a()Lcom/startshorts/androidplayer/bean/search/SearchRankingResultV2;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    sget-object v0, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->a:Lcom/startshorts/androidplayer/manager/act/ActResourceManager;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->A()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Ljava/util/Collection;

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    xor-int/lit8 v8, v0, 0x1

    .line 58
    .line 59
    const/16 v12, 0x676

    .line 60
    .line 61
    const/4 v13, 0x0

    .line 62
    const/4 v3, 0x0

    .line 63
    const/4 v5, 0x0

    .line 64
    const/4 v6, 0x0

    .line 65
    const/4 v7, 0x0

    .line 66
    const/4 v9, 0x0

    .line 67
    const/4 v10, 0x1

    .line 68
    const/4 v11, 0x0

    .line 69
    const/16 v16, 0x0

    .line 70
    .line 71
    move-object/from16 v0, p0

    .line 72
    .line 73
    move v1, v2

    .line 74
    move v2, v3

    .line 75
    move v3, v5

    .line 76
    move-object v5, v6

    .line 77
    move-object v6, v7

    .line 78
    move-object v7, v9

    .line 79
    move v9, v10

    .line 80
    move v10, v11

    .line 81
    move-object/from16 v11, v16

    .line 82
    .line 83
    invoke-static/range {v0 .. v13}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->S1(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;ZZZLcom/startshorts/androidplayer/bean/search/SearchRankingResultV2;Lcom/startshorts/androidplayer/bean/search/SearchResult;Ljava/util/List;Ljava/lang/String;ZZILjava/lang/String;ILjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v14, v15}, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->K0(Z)V

    .line 87
    .line 88
    .line 89
    goto/16 :goto_4

    .line 90
    .line 91
    :cond_0
    instance-of v0, v6, Lcom/startshorts/androidplayer/viewmodel/search/d$i;

    .line 92
    .line 93
    if-eqz v0, :cond_1

    .line 94
    .line 95
    invoke-virtual {v14, v15}, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->K0(Z)V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_4

    .line 99
    .line 100
    :cond_1
    instance-of v0, v6, Lcom/startshorts/androidplayer/viewmodel/search/d$j;

    .line 101
    .line 102
    if-eqz v0, :cond_2

    .line 103
    .line 104
    move-object v0, v6

    .line 105
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/search/d$j;

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/search/d$j;->a()Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    const/16 v12, 0x7df

    .line 112
    .line 113
    const/4 v13, 0x0

    .line 114
    const/4 v1, 0x0

    .line 115
    const/4 v2, 0x0

    .line 116
    const/4 v3, 0x0

    .line 117
    const/4 v4, 0x0

    .line 118
    const/4 v5, 0x0

    .line 119
    const/4 v7, 0x0

    .line 120
    const/4 v8, 0x0

    .line 121
    const/4 v9, 0x0

    .line 122
    const/4 v10, 0x0

    .line 123
    const/4 v11, 0x0

    .line 124
    move-object/from16 v0, p0

    .line 125
    .line 126
    invoke-static/range {v0 .. v13}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->S1(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;ZZZLcom/startshorts/androidplayer/bean/search/SearchRankingResultV2;Lcom/startshorts/androidplayer/bean/search/SearchResult;Ljava/util/List;Ljava/lang/String;ZZILjava/lang/String;ILjava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    goto/16 :goto_4

    .line 130
    .line 131
    :cond_2
    instance-of v0, v6, Lcom/startshorts/androidplayer/viewmodel/search/d$h;

    .line 132
    .line 133
    if-eqz v0, :cond_3

    .line 134
    .line 135
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->o1()V

    .line 136
    .line 137
    .line 138
    goto/16 :goto_4

    .line 139
    .line 140
    :cond_3
    instance-of v0, v6, Lcom/startshorts/androidplayer/viewmodel/search/d$f;

    .line 141
    .line 142
    if-eqz v0, :cond_4

    .line 143
    .line 144
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->P1()V

    .line 145
    .line 146
    .line 147
    goto/16 :goto_4

    .line 148
    .line 149
    :cond_4
    instance-of v0, v6, Lcom/startshorts/androidplayer/viewmodel/search/d$g;

    .line 150
    .line 151
    if-eqz v0, :cond_5

    .line 152
    .line 153
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->o1()V

    .line 154
    .line 155
    .line 156
    move-object v0, v6

    .line 157
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/search/d$g;

    .line 158
    .line 159
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/search/d$g;->a()Lcom/startshorts/androidplayer/bean/search/SearchResult;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/search/d$g;->b()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v7

    .line 167
    const/16 v12, 0x7af

    .line 168
    .line 169
    const/4 v13, 0x0

    .line 170
    const/4 v1, 0x0

    .line 171
    const/4 v2, 0x0

    .line 172
    const/4 v3, 0x0

    .line 173
    const/4 v4, 0x0

    .line 174
    const/4 v6, 0x0

    .line 175
    const/4 v8, 0x0

    .line 176
    const/4 v9, 0x0

    .line 177
    const/4 v10, 0x0

    .line 178
    const/4 v11, 0x0

    .line 179
    move-object/from16 v0, p0

    .line 180
    .line 181
    invoke-static/range {v0 .. v13}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->S1(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;ZZZLcom/startshorts/androidplayer/bean/search/SearchRankingResultV2;Lcom/startshorts/androidplayer/bean/search/SearchResult;Ljava/util/List;Ljava/lang/String;ZZILjava/lang/String;ILjava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    goto/16 :goto_4

    .line 185
    .line 186
    :cond_5
    instance-of v0, v6, Lcom/startshorts/androidplayer/viewmodel/search/d$b;

    .line 187
    .line 188
    if-eqz v0, :cond_8

    .line 189
    .line 190
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->o1()V

    .line 191
    .line 192
    .line 193
    move-object v0, v6

    .line 194
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/search/d$b;

    .line 195
    .line 196
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/search/d$b;->c()Z

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    xor-int/2addr v2, v1

    .line 201
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/search/d$b;->c()Z

    .line 202
    .line 203
    .line 204
    move-result v3

    .line 205
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/search/d$b;->c()Z

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    if-eqz v1, :cond_6

    .line 210
    .line 211
    const/4 v1, 0x0

    .line 212
    :goto_0
    move-object v4, v1

    .line 213
    goto :goto_1

    .line 214
    :cond_6
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/search/d$b;->d()Lcom/startshorts/androidplayer/bean/search/SearchRankingResultV2;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    goto :goto_0

    .line 219
    :goto_1
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/search/d$b;->b()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    if-nez v1, :cond_7

    .line 224
    .line 225
    const-string v1, ""

    .line 226
    .line 227
    :cond_7
    move-object v11, v1

    .line 228
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/search/d$b;->e()I

    .line 229
    .line 230
    .line 231
    move-result v10

    .line 232
    const/16 v12, 0x1f1

    .line 233
    .line 234
    const/4 v13, 0x0

    .line 235
    const/4 v1, 0x0

    .line 236
    const/4 v5, 0x0

    .line 237
    const/4 v6, 0x0

    .line 238
    const/4 v7, 0x0

    .line 239
    const/4 v8, 0x0

    .line 240
    const/4 v9, 0x0

    .line 241
    move-object/from16 v0, p0

    .line 242
    .line 243
    invoke-static/range {v0 .. v13}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->S1(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;ZZZLcom/startshorts/androidplayer/bean/search/SearchRankingResultV2;Lcom/startshorts/androidplayer/bean/search/SearchResult;Ljava/util/List;Ljava/lang/String;ZZILjava/lang/String;ILjava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v14, v15}, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->K0(Z)V

    .line 247
    .line 248
    .line 249
    goto/16 :goto_4

    .line 250
    .line 251
    :cond_8
    instance-of v0, v6, Lcom/startshorts/androidplayer/viewmodel/search/d$d;

    .line 252
    .line 253
    if-nez v0, :cond_c

    .line 254
    .line 255
    instance-of v0, v6, Lcom/startshorts/androidplayer/viewmodel/search/d$e;

    .line 256
    .line 257
    if-eqz v0, :cond_b

    .line 258
    .line 259
    move-object v0, v6

    .line 260
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/search/d$e;

    .line 261
    .line 262
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/search/d$e;->a()Lcom/startshorts/androidplayer/bean/search/SearchResult;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/search/SearchResult;->getShortPlays()Ljava/util/List;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    check-cast v0, Ljava/lang/Iterable;

    .line 271
    .line 272
    new-instance v2, Ljava/util/ArrayList;

    .line 273
    .line 274
    const/16 v3, 0xa

    .line 275
    .line 276
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 277
    .line 278
    .line 279
    move-result v3

    .line 280
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 281
    .line 282
    .line 283
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 288
    .line 289
    .line 290
    move-result v3

    .line 291
    if-eqz v3, :cond_9

    .line 292
    .line 293
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v3

    .line 297
    check-cast v3, Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;

    .line 298
    .line 299
    new-instance v4, Lcom/startshorts/androidplayer/bean/search/SearchModule$ExactlyEpisodeModule;

    .line 300
    .line 301
    invoke-direct {v4, v3}, Lcom/startshorts/androidplayer/bean/search/SearchModule$ExactlyEpisodeModule;-><init>(Lcom/startshorts/androidplayer/bean/search/EpisodeSearchResult;)V

    .line 302
    .line 303
    .line 304
    sget-object v3, Lfk/z;->a:Lfk/z;

    .line 305
    .line 306
    invoke-virtual {v3}, Lfk/z;->b()I

    .line 307
    .line 308
    .line 309
    move-result v3

    .line 310
    invoke-virtual {v4, v3}, Lcom/startshorts/androidplayer/bean/search/SearchModule;->setBottomMargin(I)V

    .line 311
    .line 312
    .line 313
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    goto :goto_2

    .line 317
    :cond_9
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 318
    .line 319
    .line 320
    move-result v0

    .line 321
    const/16 v3, 0x14

    .line 322
    .line 323
    if-ge v0, v3, :cond_a

    .line 324
    .line 325
    invoke-virtual {v14, v15}, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->K0(Z)V

    .line 326
    .line 327
    .line 328
    sget-object v0, Lcom/startshorts/androidplayer/bean/search/SearchModule$NoMoreResultModule;->INSTANCE:Lcom/startshorts/androidplayer/bean/search/SearchModule$NoMoreResultModule;

    .line 329
    .line 330
    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt;->L0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    goto :goto_3

    .line 335
    :cond_a
    invoke-virtual {v14, v1}, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->K0(Z)V

    .line 336
    .line 337
    .line 338
    :goto_3
    check-cast v2, Ljava/util/Collection;

    .line 339
    .line 340
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->g1(Ljava/util/Collection;)Ljava/util/List;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    const/4 v4, 0x6

    .line 345
    const/4 v5, 0x0

    .line 346
    const/4 v2, 0x0

    .line 347
    const/4 v3, 0x0

    .line 348
    move-object/from16 v0, p0

    .line 349
    .line 350
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->H0(Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;Ljava/util/List;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 351
    .line 352
    .line 353
    goto :goto_4

    .line 354
    :cond_b
    instance-of v0, v6, Lcom/startshorts/androidplayer/viewmodel/search/d$c;

    .line 355
    .line 356
    if-eqz v0, :cond_c

    .line 357
    .line 358
    const/4 v4, 0x4

    .line 359
    const/4 v5, 0x0

    .line 360
    const/4 v1, 0x0

    .line 361
    const/4 v2, 0x0

    .line 362
    const/4 v3, 0x0

    .line 363
    move-object/from16 v0, p0

    .line 364
    .line 365
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->H0(Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;Ljava/util/List;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 366
    .line 367
    .line 368
    move-object v0, v6

    .line 369
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/search/d$c;

    .line 370
    .line 371
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/search/d$c;->b()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    invoke-virtual {v14, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->y(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    :cond_c
    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 379
    .line 380
    return-object v0
.end method

.method private final y1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivitySearchBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivitySearchBinding;->c:Landroid/widget/ImageView;

    .line 8
    .line 9
    new-instance v1, Lbi/n;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lbi/n;-><init>(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivitySearchBinding;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivitySearchBinding;->a:Landroid/widget/ImageView;

    .line 24
    .line 25
    new-instance v1, Lbi/b;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lbi/b;-><init>(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivitySearchBinding;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivitySearchBinding;->f:Landroid/widget/ImageView;

    .line 40
    .line 41
    new-instance v1, Lbi/c;

    .line 42
    .line 43
    invoke-direct {v1, p0}, Lbi/c;-><init>(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->u1()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method private static final z1(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/startshorts/androidplayer/databinding/ActivitySearchBinding;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/startshorts/androidplayer/databinding/ActivitySearchBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseEditText;

    .line 8
    .line 9
    const-string p1, ""

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public F0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public I0(II)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "loadMore -> start "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const/16 v1, 0x20

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->I0(II)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->l1()Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;->C()Landroidx/lifecycle/MutableLiveData;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/search/d;

    .line 45
    .line 46
    instance-of v1, v0, Lcom/startshorts/androidplayer/viewmodel/search/d$g;

    .line 47
    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    move-object v1, v0

    .line 51
    check-cast v1, Lcom/startshorts/androidplayer/viewmodel/search/d$g;

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/search/d$g;->b()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const-string v1, ""

    .line 59
    .line 60
    :goto_0
    instance-of v2, v0, Lcom/startshorts/androidplayer/viewmodel/search/d$e;

    .line 61
    .line 62
    if-eqz v2, :cond_1

    .line 63
    .line 64
    move-object v1, v0

    .line 65
    check-cast v1, Lcom/startshorts/androidplayer/viewmodel/search/d$e;

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/search/d$e;->b()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    :cond_1
    instance-of v2, v0, Lcom/startshorts/androidplayer/viewmodel/search/d$c;

    .line 72
    .line 73
    if-eqz v2, :cond_2

    .line 74
    .line 75
    move-object v1, v0

    .line 76
    check-cast v1, Lcom/startshorts/androidplayer/viewmodel/search/d$c;

    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/search/d$c;->a()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    :cond_2
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-lez v2, :cond_3

    .line 87
    .line 88
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->l1()Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    new-instance v2, Lcom/startshorts/androidplayer/viewmodel/search/c$c;

    .line 93
    .line 94
    invoke-direct {v2, v1, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/search/c$c;-><init>(Ljava/lang/String;II)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;->E(Lcom/startshorts/androidplayer/viewmodel/search/c;)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string p2, "loadMore -> keyword is empty "

    .line 107
    .line 108
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :goto_1
    return-void
.end method

.method public a0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public g0()V
    .locals 3

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity;->j0(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity;->k0(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;

    .line 15
    .line 16
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 17
    .line 18
    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;-><init>(Ljava/lang/ref/WeakReference;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;->a0(Landroidx/lifecycle/Lifecycle;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;->Z(Landroidx/recyclerview/widget/LinearLayoutManager;)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity$b;

    .line 35
    .line 36
    invoke-direct {v0, p0, v1}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity$b;-><init>(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;->b0(Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$d;)V

    .line 40
    .line 41
    .line 42
    new-instance v0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity$c;

    .line 43
    .line 44
    invoke-direct {v0, p0, v1}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity$c;-><init>(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->B(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v1}, Lcom/startshorts/androidplayer/ui/activity/base/RecyclerViewActivity;->i0(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 51
    .line 52
    .line 53
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->g0()V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public o()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->activity_search:I

    .line 2
    .line 3
    return v0
.end method

.method public onAttachedToWindow()V
    .locals 10

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->C1()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->I:Lcom/startshorts/androidplayer/bean/search/SearchKey;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/search/SearchKey;->getKey()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    :cond_0
    const-string v0, ""

    .line 18
    .line 19
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v2, "onAttachedToWindow -> recommendedName="

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p0, v1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lcom/startshorts/androidplayer/databinding/ActivitySearchBinding;

    .line 44
    .line 45
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ActivitySearchBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseEditText;

    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 48
    .line 49
    .line 50
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-lez v2, :cond_2

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    sget-object v3, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 60
    .line 61
    new-instance v5, Landroid/os/Bundle;

    .line 62
    .line 63
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v0, "from"

    .line 67
    .line 68
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->T:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v5, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 74
    .line 75
    const/4 v8, 0x4

    .line 76
    const/4 v9, 0x0

    .line 77
    const-string v4, "search_page_show"

    .line 78
    .line 79
    const-wide/16 v6, 0x0

    .line 80
    .line 81
    invoke-static/range {v3 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivitySearchBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivitySearchBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseEditText;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v0, ""

    .line 17
    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-lez v0, :cond_1

    .line 23
    .line 24
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->l1()Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;->C()Landroidx/lifecycle/MutableLiveData;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    instance-of v0, v0, Lcom/startshorts/androidplayer/viewmodel/search/d$a;

    .line 37
    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    const-string v0, "onBackPressed -> SearchIntent.Init"

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->l1()Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sget-object v1, Lcom/startshorts/androidplayer/viewmodel/search/c$a;->a:Lcom/startshorts/androidplayer/viewmodel/search/c$a;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;->E(Lcom/startshorts/androidplayer/viewmodel/search/c;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 56
    .line 57
    .line 58
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/base/RefreshActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Led/a;->a:Led/a;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, p0, v0}, Led/a;->b(Landroid/app/Activity;Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ActivitySearchBinding;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ActivitySearchBinding;->h:Landroid/view/View;

    .line 17
    .line 18
    const-string v0, "toolbarView"

    .line 19
    .line 20
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->J()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-static {p1, v0}, Ljk/b0;->g(Landroid/view/View;I)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->y1()V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->q1()V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->s1()V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->w1()V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->p1()V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->l1()Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    sget-object v0, Lcom/startshorts/androidplayer/viewmodel/search/c$a;->a:Lcom/startshorts/androidplayer/viewmodel/search/c$a;

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;->E(Lcom/startshorts/androidplayer/viewmodel/search/c;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->l1()Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;->C()Landroidx/lifecycle/MutableLiveData;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    instance-of v0, v0, Lcom/startshorts/androidplayer/viewmodel/search/d$a;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->k1()Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget-object v1, Lcom/startshorts/androidplayer/viewmodel/search/a$c;->a:Lcom/startshorts/androidplayer/viewmodel/search/a$c;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel;->B(Lcom/startshorts/androidplayer/viewmodel/search/a;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public q0()I
    .locals 1

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    return v0
.end method

.method public r()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "SearchActivity"

    .line 2
    .line 3
    return-object v0
.end method

.method public u0()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/activity/base/ListActivity;->u0()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->n1()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public v()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/activity/base/ListActivity;->v()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->o1()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->K1()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
