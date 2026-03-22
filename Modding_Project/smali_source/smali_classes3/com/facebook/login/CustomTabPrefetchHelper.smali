.class public final Lcom/facebook/login/CustomTabPrefetchHelper;
.super Landroidx/browser/customtabs/CustomTabsServiceConnection;
.source "CustomTabPrefetchHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/CustomTabPrefetchHelper$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final b:Lcom/facebook/login/CustomTabPrefetchHelper$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static c:Landroidx/browser/customtabs/CustomTabsClient;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static d:Landroidx/browser/customtabs/CustomTabsSession;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static final e:Ljava/util/concurrent/locks/ReentrantLock;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/login/CustomTabPrefetchHelper$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/facebook/login/CustomTabPrefetchHelper$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/facebook/login/CustomTabPrefetchHelper;->b:Lcom/facebook/login/CustomTabPrefetchHelper$a;

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/facebook/login/CustomTabPrefetchHelper;->e:Ljava/util/concurrent/locks/ReentrantLock;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsServiceConnection;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic a()Landroidx/browser/customtabs/CustomTabsClient;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/login/CustomTabPrefetchHelper;->c:Landroidx/browser/customtabs/CustomTabsClient;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic b()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/login/CustomTabPrefetchHelper;->e:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic c()Landroidx/browser/customtabs/CustomTabsSession;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/login/CustomTabPrefetchHelper;->d:Landroidx/browser/customtabs/CustomTabsSession;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic d(Landroidx/browser/customtabs/CustomTabsSession;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/facebook/login/CustomTabPrefetchHelper;->d:Landroidx/browser/customtabs/CustomTabsSession;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroidx/browser/customtabs/CustomTabsClient;)V
    .locals 2
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/browser/customtabs/CustomTabsClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "newClient"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    invoke-virtual {p2, v0, v1}, Landroidx/browser/customtabs/CustomTabsClient;->warmup(J)Z

    .line 14
    .line 15
    .line 16
    sput-object p2, Lcom/facebook/login/CustomTabPrefetchHelper;->c:Landroidx/browser/customtabs/CustomTabsClient;

    .line 17
    .line 18
    sget-object p1, Lcom/facebook/login/CustomTabPrefetchHelper;->b:Lcom/facebook/login/CustomTabPrefetchHelper$a;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/facebook/login/CustomTabPrefetchHelper$a;->a(Lcom/facebook/login/CustomTabPrefetchHelper$a;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1    # Landroid/content/ComponentName;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "componentName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
