.class public final Landroidx/webkit/WebViewStartUpConfig$Builder;
.super Ljava/lang/Object;
.source "WebViewStartUpConfig.java"


# annotations
.annotation build Landroidx/webkit/WebViewCompat$ExperimentalAsyncStartUp;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/WebViewStartUpConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mProfilesToLoadDuringStartup:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldRunUiThreadStartUpTasks:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/webkit/WebViewStartUpConfig$Builder;->mShouldRunUiThreadStartUpTasks:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Landroidx/webkit/WebViewStartUpConfig$Builder;->mProfilesToLoadDuringStartup:Ljava/util/Set;

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/webkit/WebViewStartUpConfig$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public build()Landroidx/webkit/WebViewStartUpConfig;
    .locals 5

    .line 1
    new-instance v0, Landroidx/webkit/WebViewStartUpConfig;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/webkit/WebViewStartUpConfig$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    iget-boolean v2, p0, Landroidx/webkit/WebViewStartUpConfig$Builder;->mShouldRunUiThreadStartUpTasks:Z

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/webkit/WebViewStartUpConfig$Builder;->mProfilesToLoadDuringStartup:Ljava/util/Set;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/webkit/WebViewStartUpConfig;-><init>(Ljava/util/concurrent/Executor;ZLjava/util/Set;Landroidx/webkit/WebViewStartUpConfig$1;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public setProfilesToLoadDuringStartup(Ljava/util/Set;)Landroidx/webkit/WebViewStartUpConfig$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/webkit/WebViewStartUpConfig$Builder;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/webkit/WebViewStartUpConfig$Builder;->mShouldRunUiThreadStartUpTasks:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashSet;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/webkit/WebViewStartUpConfig$Builder;->mProfilesToLoadDuringStartup:Ljava/util/Set;

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string v0, "Can\'t specify profiles to load without running UI thread startup tasks"

    .line 16
    .line 17
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1
.end method

.method public setShouldRunUiThreadStartUpTasks(Z)Landroidx/webkit/WebViewStartUpConfig$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/WebViewStartUpConfig$Builder;->mProfilesToLoadDuringStartup:Ljava/util/Set;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string v0, "Can\'t specify profiles to load without running UI thread startup tasks"

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p1

    .line 16
    :cond_1
    :goto_0
    iput-boolean p1, p0, Landroidx/webkit/WebViewStartUpConfig$Builder;->mShouldRunUiThreadStartUpTasks:Z

    .line 17
    .line 18
    return-object p0
.end method
