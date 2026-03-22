.class public final Lcom/facebook/login/CustomTabPrefetchHelper$a;
.super Ljava/lang/Object;
.source "CustomTabPrefetchHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/CustomTabPrefetchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCustomTabPrefetchHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomTabPrefetchHelper.kt\ncom/facebook/login/CustomTabPrefetchHelper$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,72:1\n1#2:73\n*E\n"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/login/CustomTabPrefetchHelper$a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/facebook/login/CustomTabPrefetchHelper$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/login/CustomTabPrefetchHelper$a;->d()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final d()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/facebook/login/CustomTabPrefetchHelper;->b()Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/facebook/login/CustomTabPrefetchHelper;->c()Landroidx/browser/customtabs/CustomTabsSession;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-static {}, Lcom/facebook/login/CustomTabPrefetchHelper;->a()Landroidx/browser/customtabs/CustomTabsClient;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsClient;->newSession(Landroidx/browser/customtabs/CustomTabsCallback;)Landroidx/browser/customtabs/CustomTabsSession;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/facebook/login/CustomTabPrefetchHelper;->d(Landroidx/browser/customtabs/CustomTabsSession;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-static {}, Lcom/facebook/login/CustomTabPrefetchHelper;->b()Ljava/util/concurrent/locks/ReentrantLock;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 33
    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final b()Landroidx/browser/customtabs/CustomTabsSession;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/login/CustomTabPrefetchHelper;->b()Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/facebook/login/CustomTabPrefetchHelper;->c()Landroidx/browser/customtabs/CustomTabsSession;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {v1}, Lcom/facebook/login/CustomTabPrefetchHelper;->d(Landroidx/browser/customtabs/CustomTabsSession;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/facebook/login/CustomTabPrefetchHelper;->b()Ljava/util/concurrent/locks/ReentrantLock;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public final c(Landroid/net/Uri;)V
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/facebook/login/CustomTabPrefetchHelper$a;->d()V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/facebook/login/CustomTabPrefetchHelper;->b()Ljava/util/concurrent/locks/ReentrantLock;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/facebook/login/CustomTabPrefetchHelper;->c()Landroidx/browser/customtabs/CustomTabsSession;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, p1, v1, v1}, Landroidx/browser/customtabs/CustomTabsSession;->mayLaunchUrl(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-static {}, Lcom/facebook/login/CustomTabPrefetchHelper;->b()Ljava/util/concurrent/locks/ReentrantLock;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 31
    .line 32
    .line 33
    return-void
.end method
