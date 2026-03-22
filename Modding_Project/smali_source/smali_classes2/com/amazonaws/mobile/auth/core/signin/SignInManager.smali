.class public Lcom/amazonaws/mobile/auth/core/signin/SignInManager;
.super Ljava/lang/Object;
.source "SignInManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "SignInManager"

.field private static volatile d:Lcom/amazonaws/mobile/auth/core/signin/SignInManager;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazonaws/mobile/auth/core/signin/SignInProvider;",
            ">;",
            "Lcom/amazonaws/mobile/auth/core/signin/SignInProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/amazonaws/mobile/auth/core/signin/SignInPermissionsHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    const-string v0, " . Skipping this provider."

    .line 2
    .line 3
    const-string v1, "Unable to instantiate "

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v2, p0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->a:Ljava/util/Map;

    .line 14
    .line 15
    new-instance v2, Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v2, p0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->b:Landroid/util/SparseArray;

    .line 21
    .line 22
    invoke-static {}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->f()Lcom/amazonaws/mobile/auth/core/IdentityManager;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->h()Ljava/util/Collection;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Ljava/lang/Class;

    .line 45
    .line 46
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Lcom/amazonaws/mobile/auth/core/signin/SignInProvider;

    .line 51
    .line 52
    if-eqz v4, :cond_0

    .line 53
    .line 54
    invoke-static {}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->f()Lcom/amazonaws/mobile/auth/core/IdentityManager;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {v5}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->d()Lcom/amazonaws/mobile/config/AWSConfiguration;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-interface {v4, p1, v5}, Lcom/amazonaws/mobile/auth/core/IdentityProvider;->a(Landroid/content/Context;Lcom/amazonaws/mobile/config/AWSConfiguration;)V

    .line 63
    .line 64
    .line 65
    iget-object v5, p0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->a:Ljava/util/Map;

    .line 66
    .line 67
    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    instance-of v5, v4, Lcom/amazonaws/mobile/auth/core/signin/SignInPermissionsHandler;

    .line 71
    .line 72
    if-eqz v5, :cond_0

    .line 73
    .line 74
    check-cast v4, Lcom/amazonaws/mobile/auth/core/signin/SignInPermissionsHandler;

    .line 75
    .line 76
    iget-object v5, p0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->b:Landroid/util/SparseArray;

    .line 77
    .line 78
    invoke-interface {v4}, Lcom/amazonaws/mobile/auth/core/signin/SignInPermissionsHandler;->a()I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :catch_0
    sget-object v4, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->c:Ljava/lang/String;

    .line 87
    .line 88
    new-instance v5, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :catch_1
    sget-object v4, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->c:Ljava/lang/String;

    .line 115
    .line 116
    new-instance v5, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_1
    sput-object p0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->d:Lcom/amazonaws/mobile/auth/core/signin/SignInManager;

    .line 143
    .line 144
    return-void
.end method

.method private a(Ljava/lang/Class;)Lcom/amazonaws/mobile/auth/core/signin/SignInProvider;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazonaws/mobile/auth/core/signin/SignInProvider;",
            ">;)",
            "Lcom/amazonaws/mobile/auth/core/signin/SignInProvider;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->a:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/amazonaws/mobile/auth/core/signin/SignInProvider;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "No such provider : "

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0
.end method

.method public static declared-synchronized b()Lcom/amazonaws/mobile/auth/core/signin/SignInManager;
    .locals 2

    .line 1
    const-class v0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->d:Lcom/amazonaws/mobile/auth/core/signin/SignInManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw v1
.end method

.method public static declared-synchronized c(Landroid/content/Context;)Lcom/amazonaws/mobile/auth/core/signin/SignInManager;
    .locals 2

    .line 1
    const-class v0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->d:Lcom/amazonaws/mobile/auth/core/signin/SignInManager;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->d:Lcom/amazonaws/mobile/auth/core/signin/SignInManager;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object p0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->d:Lcom/amazonaws/mobile/auth/core/signin/SignInManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object p0

    .line 22
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw p0
.end method


# virtual methods
.method public d()Lcom/amazonaws/mobile/auth/core/signin/SignInProvider;
    .locals 4

    .line 1
    sget-object v0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->c:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "Providers: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->a:Ljava/util/Map;

    .line 14
    .line 15
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->a:Ljava/util/Map;

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Lcom/amazonaws/mobile/auth/core/signin/SignInProvider;

    .line 50
    .line 51
    invoke-interface {v1}, Lcom/amazonaws/mobile/auth/core/IdentityProvider;->d()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_0

    .line 56
    .line 57
    sget-object v0, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->c:Ljava/lang/String;

    .line 58
    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v3, "Refreshing provider: "

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-interface {v1}, Lcom/amazonaws/mobile/auth/core/IdentityProvider;->c()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    return-object v1

    .line 84
    :cond_1
    const/4 v0, 0x0

    .line 85
    return-object v0
.end method

.method public e(Ljava/lang/Class;Landroid/view/View;)Landroid/view/View$OnClickListener;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazonaws/mobile/auth/core/signin/SignInProvider;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View$OnClickListener;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/amazonaws/mobile/auth/core/signin/SignInManager;->a(Ljava/lang/Class;)Lcom/amazonaws/mobile/auth/core/signin/SignInProvider;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {v0}, Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter;->a(Lcom/amazonaws/mobile/auth/core/signin/SignInManager$SignInProviderResultAdapter;)Landroid/app/Activity;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->f()Lcom/amazonaws/mobile/auth/core/IdentityManager;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Lcom/amazonaws/mobile/auth/core/IdentityManager;->g()Lcom/amazonaws/mobile/auth/core/IdentityManager$SignInProviderResultAdapter;

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v1, p2, v0}, Lcom/amazonaws/mobile/auth/core/signin/SignInProvider;->b(Landroid/app/Activity;Landroid/view/View;Lcom/amazonaws/mobile/auth/core/signin/SignInProviderResultHandler;)Landroid/view/View$OnClickListener;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method
