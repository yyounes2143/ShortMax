.class public Lcom/amazonaws/mobile/auth/core/IdentityManager;
.super Ljava/lang/Object;
.source "IdentityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/mobile/auth/core/IdentityManager$SignInProviderResultAdapter;
    }
.end annotation


# static fields
.field private static l:Lcom/amazonaws/mobile/auth/core/IdentityManager;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/amazonaws/mobile/config/AWSConfiguration;

.field private final c:Lcom/amazonaws/ClientConfiguration;

.field private final d:Ljava/util/concurrent/ExecutorService;

.field private final e:Ljava/util/concurrent/CountDownLatch;

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazonaws/mobile/auth/core/signin/SignInProvider;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile g:Lcom/amazonaws/mobile/auth/core/IdentityProvider;

.field private final h:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/amazonaws/mobile/auth/core/SignInStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

.field private j:Z

.field k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->d:Ljava/util/concurrent/ExecutorService;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->e:Ljava/util/concurrent/CountDownLatch;

    .line 18
    .line 19
    new-instance v0, Ljava/util/HashSet;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->f:Ljava/util/Set;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->g:Lcom/amazonaws/mobile/auth/core/IdentityProvider;

    .line 28
    .line 29
    new-instance v2, Ljava/util/HashSet;

    .line 30
    .line 31
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v2, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->h:Ljava/util/HashSet;

    .line 35
    .line 36
    iput-boolean v1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->j:Z

    .line 37
    .line 38
    iput-boolean v1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->k:Z

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->a:Landroid/content/Context;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->b:Lcom/amazonaws/mobile/config/AWSConfiguration;

    .line 47
    .line 48
    iput-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->c:Lcom/amazonaws/ClientConfiguration;

    .line 49
    .line 50
    new-instance v0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 51
    .line 52
    const-string v1, "com.amazonaws.android.auth"

    .line 53
    .line 54
    iget-boolean v2, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->j:Z

    .line 55
    .line 56
    invoke-direct {v0, p1, v1, v2}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->i:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 60
    .line 61
    return-void
.end method

.method public static f()Lcom/amazonaws/mobile/auth/core/IdentityManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->l:Lcom/amazonaws/mobile/auth/core/IdentityManager;

    .line 2
    .line 3
    return-object v0
.end method

.method public static j(Lcom/amazonaws/mobile/auth/core/IdentityManager;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->l:Lcom/amazonaws/mobile/auth/core/IdentityManager;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazonaws/mobile/auth/core/signin/SignInProvider;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->f:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Lcom/amazonaws/mobile/auth/core/SignInStateChangeListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->h:Ljava/util/HashSet;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->h:Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method

.method public c(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->k:Z

    .line 2
    .line 3
    return-void
.end method

.method public d()Lcom/amazonaws/mobile/config/AWSConfiguration;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->b:Lcom/amazonaws/mobile/config/AWSConfiguration;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Lcom/amazonaws/auth/AWSCredentialsProvider;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public g()Lcom/amazonaws/mobile/auth/core/IdentityManager$SignInProviderResultAdapter;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public h()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazonaws/mobile/auth/core/signin/SignInProvider;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->f:Ljava/util/Set;

    .line 2
    .line 3
    return-object v0
.end method

.method public i(Lcom/amazonaws/mobile/config/AWSConfiguration;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->b:Lcom/amazonaws/mobile/config/AWSConfiguration;

    .line 2
    .line 3
    return-void
.end method

.method public k(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->j:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/IdentityManager;->i:Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->r(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
