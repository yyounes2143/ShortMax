.class public final Landroidx/credentials/PrepareGetCredentialResponse;
.super Ljava/lang/Object;
.source "PrepareGetCredentialResponse.kt"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingGetterMatchingBuilder"
    }
.end annotation

.annotation build Landroidx/annotation/RequiresApi;
    value = 0x22
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/PrepareGetCredentialResponse$Builder;,
        Landroidx/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;,
        Landroidx/credentials/PrepareGetCredentialResponse$TestBuilder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final credentialTypeDelegate:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final hasAuthResultsDelegate:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final hasRemoteResultsDelegate:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final isNullHandlesForTest:Z

.field private final pendingGetCredentialHandle:Landroidx/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/credentials/PrepareGetCredentialResponse;->pendingGetCredentialHandle:Landroidx/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;

    .line 4
    iput-object p2, p0, Landroidx/credentials/PrepareGetCredentialResponse;->hasRemoteResultsDelegate:Lkotlin/jvm/functions/Function0;

    .line 5
    iput-object p3, p0, Landroidx/credentials/PrepareGetCredentialResponse;->hasAuthResultsDelegate:Lkotlin/jvm/functions/Function0;

    .line 6
    iput-object p4, p0, Landroidx/credentials/PrepareGetCredentialResponse;->credentialTypeDelegate:Lkotlin/jvm/functions/Function1;

    .line 7
    iput-boolean p5, p0, Landroidx/credentials/PrepareGetCredentialResponse;->isNullHandlesForTest:Z

    .line 8
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x22

    if-lt p2, p3, :cond_0

    if-nez p5, :cond_0

    .line 9
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Landroidx/credentials/PrepareGetCredentialResponse;-><init>(Landroidx/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Z)V

    return-void
.end method


# virtual methods
.method public final getCredentialTypeDelegate()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/credentials/PrepareGetCredentialResponse;->credentialTypeDelegate:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHasAuthResultsDelegate()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/credentials/PrepareGetCredentialResponse;->hasAuthResultsDelegate:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHasRemoteResultsDelegate()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/credentials/PrepareGetCredentialResponse;->hasRemoteResultsDelegate:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPendingGetCredentialHandle()Landroidx/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/credentials/PrepareGetCredentialResponse;->pendingGetCredentialHandle:Landroidx/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;

    .line 2
    .line 3
    return-object v0
.end method

.method public final hasAuthenticationResults()Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.CREDENTIAL_MANAGER_QUERY_CANDIDATE_CREDENTIALS"
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/credentials/PrepareGetCredentialResponse;->hasAuthResultsDelegate:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public final hasCredentialResults(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.CREDENTIAL_MANAGER_QUERY_CANDIDATE_CREDENTIALS"
    .end annotation

    .line 1
    const-string v0, "credentialType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/credentials/PrepareGetCredentialResponse;->credentialTypeDelegate:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    return p1
.end method

.method public final hasRemoteResults()Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.CREDENTIAL_MANAGER_QUERY_CANDIDATE_CREDENTIALS"
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/credentials/PrepareGetCredentialResponse;->hasRemoteResultsDelegate:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public final isNullHandlesForTest()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/credentials/PrepareGetCredentialResponse;->isNullHandlesForTest:Z

    .line 2
    .line 3
    return v0
.end method
