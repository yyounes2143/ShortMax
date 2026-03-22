.class public final Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;
.super Lcom/startshorts/androidplayer/ui/fragment/base/ToolbarRVFragment;
.source "SettingsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/ToolbarRVFragment<",
        "Lcom/startshorts/androidplayer/bean/settings/AppSettings;",
        "Lcom/startshorts/androidplayer/databinding/FragmentSettingsBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSettingsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,413:1\n15#2,9:414\n15#2,9:423\n15#2,9:439\n15#2,9:448\n360#3,7:432\n*S KotlinDebug\n*F\n+ 1 SettingsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment\n*L\n265#1:414,9\n280#1:423,9\n349#1:439,9\n111#1:448,9\n329#1:432,7\n*E\n"
    }
.end annotation


# static fields
.field public static final E:Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private A:I

.field private B:I

.field private C:Lhi/b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private D:I

.field private final x:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private y:Z

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->E:Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/ToolbarRVFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lwi/k;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lwi/k;-><init>(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->x:Lms/i;

    .line 14
    .line 15
    const-wide/16 v0, -0x1

    .line 16
    .line 17
    iput-wide v0, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->z:J

    .line 18
    .line 19
    return-void
.end method

.method public static synthetic A0(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->M0(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic B0(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->J0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic C0(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;)Lcom/startshorts/androidplayer/databinding/FragmentSettingsBinding;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/startshorts/androidplayer/databinding/FragmentSettingsBinding;

    .line 6
    .line 7
    return-object p0
.end method

.method public static final synthetic D0(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;)Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->R0()Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic E0(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;Lhi/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->C:Lhi/b;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic F0(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->D:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic G0(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->y:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic H0(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->B:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic I0(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->Y0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final J0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->C:Lhi/b;

    .line 2
    .line 3
    const/16 v1, 0x64

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    sget-object v0, Lcom/startshorts/androidplayer/db/repository/EventRepository;->b:Lcom/startshorts/androidplayer/db/repository/EventRepository;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/db/repository/EventRepository;->H()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    div-int/2addr v0, v1

    .line 14
    if-gtz v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v3, "\u4e0a\u62a5\u9884\u8ba1\u8017\u65f6"

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const/16 v0, 0x79d2

    .line 31
    .line 32
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->x(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$b;

    .line 43
    .line 44
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;)V

    .line 45
    .line 46
    .line 47
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$c;

    .line 48
    .line 49
    invoke-direct {v2}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$c;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-static {p0, v0, v2}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    new-instance v0, Lwi/n;

    .line 56
    .line 57
    invoke-direct {v0, p0}, Lwi/n;-><init>(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;)V

    .line 58
    .line 59
    .line 60
    new-instance v2, Lwi/o;

    .line 61
    .line 62
    invoke-direct {v2, p0}, Lwi/o;-><init>(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p0, v1, v0, v2}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->K0(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method private final K0(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/db/repository/EventRepository;->b:Lcom/startshorts/androidplayer/db/repository/EventRepository;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/db/repository/EventRepository;->H()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 21
    .line 22
    new-instance v1, Lwi/r;

    .line 23
    .line 24
    invoke-direct {v1, p2}, Lwi/r;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 25
    .line 26
    .line 27
    new-instance p2, Lwi/s;

    .line 28
    .line 29
    invoke-direct {p2, p3}, Lwi/s;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1, v1, p2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->q(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    return-void
.end method

.method private static final L0(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;I)Lkotlin/Unit;
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->D:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->D:I

    .line 5
    .line 6
    sget-object p1, Lcom/startshorts/androidplayer/db/repository/EventRepository;->b:Lcom/startshorts/androidplayer/db/repository/EventRepository;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/db/repository/EventRepository;->H()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->P0()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->J0()V

    .line 19
    .line 20
    .line 21
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0
.end method

.method private static final M0(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;)Lkotlin/Unit;
    .locals 2

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->B:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->B:I

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->P0()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->J0()V

    .line 15
    .line 16
    .line 17
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p0
.end method

.method private static final N0(Lkotlin/jvm/functions/Function1;I)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method

.method private static final O0(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method private final P0()V
    .locals 2

    .line 1
    sget-object v0, Lfk/h0;->a:Lfk/h0;

    .line 2
    .line 3
    new-instance v1, Lwi/q;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lwi/q;-><init>(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lfk/h0;->e(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static final Q0(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->C:Lhi/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lfi/a;->dismiss()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->C:Lhi/b;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "\u4e0a\u62a5\u7ed3\u675f: \u4e0a\u62a5\u6210\u529f"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->D:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x6761

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->x(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->R0()Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/settings/a$b;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    const-string v2, "requireContext(...)"

    .line 49
    .line 50
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/viewmodel/settings/a$b;-><init>(Landroid/content/Context;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;->G(Lcom/startshorts/androidplayer/viewmodel/settings/a;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method private final R0()Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->x:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final S0()V
    .locals 3

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$string;->settings_fragment_version:I

    .line 2
    .line 3
    sget-object v1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->V()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v2, "getString(...)"

    .line 18
    .line 19
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lcom/startshorts/androidplayer/databinding/FragmentSettingsBinding;

    .line 27
    .line 28
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/FragmentSettingsBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 29
    .line 30
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentSettingsBinding;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentSettingsBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 40
    .line 41
    sget v2, Lcom/startshorts/androidplayer/R$string;->settings_fragment_version:I

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->V()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    sget-object v1, Lfk/h;->a:Lfk/h;

    .line 59
    .line 60
    invoke-virtual {v1}, Lfk/h;->a()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_0

    .line 69
    .line 70
    new-instance v2, Lwi/m;

    .line 71
    .line 72
    invoke-direct {v2, p0, v1}, Lwi/m;-><init>(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    .line 77
    .line 78
    :cond_0
    return-void
.end method

.method private static final T0(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;Ljava/lang/String;Landroid/view/View;)V
    .locals 8

    .line 1
    sget-object p2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->L()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-wide v2, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->z:J

    .line 8
    .line 9
    const-wide/16 v4, -0x1

    .line 10
    .line 11
    cmp-long p2, v2, v4

    .line 12
    .line 13
    if-nez p2, :cond_0

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->z:J

    .line 16
    .line 17
    iget p1, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->A:I

    .line 18
    .line 19
    add-int/lit8 p1, p1, 0x1

    .line 20
    .line 21
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->A:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sub-long v2, v0, v2

    .line 25
    .line 26
    const-wide/16 v6, 0x3e8

    .line 27
    .line 28
    cmp-long p2, v2, v6

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    if-lez p2, :cond_1

    .line 32
    .line 33
    iput-wide v0, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->z:J

    .line 34
    .line 35
    iput v2, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->A:I

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iput-wide v0, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->z:J

    .line 39
    .line 40
    iget p2, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->A:I

    .line 41
    .line 42
    add-int/lit8 p2, p2, 0x1

    .line 43
    .line 44
    iput p2, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->A:I

    .line 45
    .line 46
    const/4 v0, 0x5

    .line 47
    if-ne p2, v0, :cond_2

    .line 48
    .line 49
    iput v2, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->A:I

    .line 50
    .line 51
    iput-wide v4, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->z:J

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->x(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_0
    return-void
.end method

.method private static final U0(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;)Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;
    .locals 4

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 4
    .line 5
    .line 6
    const-class v1, Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;->C()Landroidx/lifecycle/MutableLiveData;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Lwi/p;

    .line 19
    .line 20
    invoke-direct {v2, p0}, Lwi/p;-><init>(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$g;

    .line 24
    .line 25
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$g;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method private static final V0(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;Lcom/startshorts/androidplayer/viewmodel/settings/b;)Lkotlin/Unit;
    .locals 7

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/settings/b$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/settings/b$c;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/settings/b$c;->a()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->o0(Ljava/util/List;)Z

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/settings/b$b;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    sget-object v1, Lcom/startshorts/androidplayer/manager/account/AccountManager;->a:Lcom/startshorts/androidplayer/manager/account/AccountManager;

    .line 20
    .line 21
    const/4 v5, 0x7

    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x0

    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-static/range {v1 .. v6}, Lcom/startshorts/androidplayer/manager/account/AccountManager;->p(Lcom/startshorts/androidplayer/manager/account/AccountManager;Lcom/startshorts/androidplayer/bean/account/Account;ZZILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->h()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/settings/b$d;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    const/4 p1, 0x2

    .line 38
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->Z0(I)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    instance-of p1, p1, Lcom/startshorts/androidplayer/viewmodel/settings/b$e;

    .line 43
    .line 44
    if-eqz p1, :cond_3

    .line 45
    .line 46
    const/4 p1, 0x7

    .line 47
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->Z0(I)V

    .line 48
    .line 49
    .line 50
    :cond_3
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 51
    .line 52
    return-object p0
.end method

.method private static final W0(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;Lcom/startshorts/androidplayer/bean/settings/MergeConfig;)Lkotlin/Unit;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/settings/MergeConfig;->getExistsOtherSubscription()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    sget-object v0, Lud/a;->a:Lud/a;

    .line 8
    .line 9
    invoke-virtual {v0}, Lud/a;->k()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eq p1, v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lud/a;->l0(I)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$e;

    .line 19
    .line 20
    invoke-direct {p1, p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$e;-><init>(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$f;

    .line 24
    .line 25
    invoke-direct {v0}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$f;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-static {p0, p1, v0}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 32
    .line 33
    return-object p0
.end method

.method private final X0()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$h;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$h;-><init>(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$i;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$i;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0, v1}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final Y0()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$k;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$k;-><init>(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$l;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$l;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0, v1}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final Z0(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->e0()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/startshorts/androidplayer/adapter/settings/SettingsAdapter;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/startshorts/androidplayer/adapter/settings/SettingsAdapter;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    const/4 v1, -0x1

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->m()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v2, 0x0

    .line 27
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lcom/startshorts/androidplayer/bean/settings/AppSettings;

    .line 38
    .line 39
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/settings/AppSettings;->getType()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-ne v3, p1, :cond_1

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    move v2, v1

    .line 50
    :goto_2
    if-eq v2, v1, :cond_3

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->e0()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-eqz p1, :cond_3

    .line 57
    .line 58
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 59
    .line 60
    .line 61
    :cond_3
    return-void
.end method

.method public static synthetic s0(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->T0(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;Ljava/lang/String;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic t0(Lkotlin/jvm/functions/Function1;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->N0(Lkotlin/jvm/functions/Function1;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic u0(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;Lcom/startshorts/androidplayer/bean/settings/MergeConfig;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->W0(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;Lcom/startshorts/androidplayer/bean/settings/MergeConfig;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic v0(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->O0(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic w0(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->L0(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic x0(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;)Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->U0(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;)Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic y0(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;Lcom/startshorts/androidplayer/viewmodel/settings/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->V0(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;Lcom/startshorts/androidplayer/viewmodel/settings/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic z0(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->Q0(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public i0()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/settings/SettingsAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/adapter/settings/SettingsAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$d;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$d;-><init>(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->B(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->k0(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 15
    .line 16
    .line 17
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->i0()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->fragment_settings:I

    .line 2
    .line 3
    return v0
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->s1()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->isEnable()Lkotlin/jvm/functions/Function0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    sget-object v1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->h()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    if-eqz v0, :cond_1

    .line 40
    .line 41
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 42
    .line 43
    new-instance v1, Lwi/l;

    .line 44
    .line 45
    invoke-direct {v1, p0}, Lwi/l;-><init>(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->W0(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/r;

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_0
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/event/EventManager;->Q0()V

    .line 54
    .line 55
    .line 56
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->y:Z

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->y:Z

    .line 62
    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->R0()Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/settings/a$e;

    .line 78
    .line 79
    const/4 v2, 0x1

    .line 80
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/viewmodel/settings/a$e;-><init>(Z)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;->G(Lcom/startshorts/androidplayer/viewmodel/settings/a;)V

    .line 84
    .line 85
    .line 86
    :cond_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
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
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    sget p1, Lcom/startshorts/androidplayer/R$string;->profile_fragment_settings:I

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/ToolbarRVFragment;->q0(I)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->R0()Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    new-instance p2, Lcom/startshorts/androidplayer/viewmodel/settings/a$b;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "requireContext(...)"

    .line 25
    .line 26
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p2, v0}, Lcom/startshorts/androidplayer/viewmodel/settings/a$b;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/settings/SettingsViewModel;->G(Lcom/startshorts/androidplayer/viewmodel/settings/a;)V

    .line 33
    .line 34
    .line 35
    sget-object p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->J0()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->X0()V

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->S0()V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "SettingsFragment"

    .line 2
    .line 3
    return-object v0
.end method
