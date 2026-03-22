.class public final Landroidx/credentials/provider/BeginGetCredentialResponse$Builder;
.super Ljava/lang/Object;
.source "BeginGetCredentialResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/provider/BeginGetCredentialResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/credentials/provider/Action;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private authenticationActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/credentials/provider/AuthenticationAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private credentialEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/credentials/provider/CredentialEntry;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private remoteEntry:Landroidx/credentials/provider/RemoteEntry;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/credentials/provider/BeginGetCredentialResponse$Builder;->credentialEntries:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/credentials/provider/BeginGetCredentialResponse$Builder;->actions:Ljava/util/List;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroidx/credentials/provider/BeginGetCredentialResponse$Builder;->authenticationActions:Ljava/util/List;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final addAction(Landroidx/credentials/provider/Action;)Landroidx/credentials/provider/BeginGetCredentialResponse$Builder;
    .locals 1
    .param p1    # Landroidx/credentials/provider/Action;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "action"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/credentials/provider/BeginGetCredentialResponse$Builder;->actions:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public final addAuthenticationAction(Landroidx/credentials/provider/AuthenticationAction;)Landroidx/credentials/provider/BeginGetCredentialResponse$Builder;
    .locals 1
    .param p1    # Landroidx/credentials/provider/AuthenticationAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "authenticationAction"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/credentials/provider/BeginGetCredentialResponse$Builder;->authenticationActions:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public final addCredentialEntry(Landroidx/credentials/provider/CredentialEntry;)Landroidx/credentials/provider/BeginGetCredentialResponse$Builder;
    .locals 1
    .param p1    # Landroidx/credentials/provider/CredentialEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "entry"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/credentials/provider/BeginGetCredentialResponse$Builder;->credentialEntries:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public final build()Landroidx/credentials/provider/BeginGetCredentialResponse;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/credentials/provider/BeginGetCredentialResponse;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/credentials/provider/BeginGetCredentialResponse$Builder;->credentialEntries:Ljava/util/List;

    .line 4
    .line 5
    check-cast v1, Ljava/lang/Iterable;

    .line 6
    .line 7
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->d1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Landroidx/credentials/provider/BeginGetCredentialResponse$Builder;->actions:Ljava/util/List;

    .line 12
    .line 13
    check-cast v2, Ljava/lang/Iterable;

    .line 14
    .line 15
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->d1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v3, p0, Landroidx/credentials/provider/BeginGetCredentialResponse$Builder;->authenticationActions:Ljava/util/List;

    .line 20
    .line 21
    check-cast v3, Ljava/lang/Iterable;

    .line 22
    .line 23
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->d1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iget-object v4, p0, Landroidx/credentials/provider/BeginGetCredentialResponse$Builder;->remoteEntry:Landroidx/credentials/provider/RemoteEntry;

    .line 28
    .line 29
    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/credentials/provider/BeginGetCredentialResponse;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/credentials/provider/RemoteEntry;)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method

.method public final setActions(Ljava/util/List;)Landroidx/credentials/provider/BeginGetCredentialResponse$Builder;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/credentials/provider/Action;",
            ">;)",
            "Landroidx/credentials/provider/BeginGetCredentialResponse$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "actions"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/util/Collection;

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->g1(Ljava/util/Collection;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Landroidx/credentials/provider/BeginGetCredentialResponse$Builder;->actions:Ljava/util/List;

    .line 13
    .line 14
    return-object p0
.end method

.method public final setAuthenticationActions(Ljava/util/List;)Landroidx/credentials/provider/BeginGetCredentialResponse$Builder;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/credentials/provider/AuthenticationAction;",
            ">;)",
            "Landroidx/credentials/provider/BeginGetCredentialResponse$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "authenticationEntries"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/util/Collection;

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->g1(Ljava/util/Collection;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Landroidx/credentials/provider/BeginGetCredentialResponse$Builder;->authenticationActions:Ljava/util/List;

    .line 13
    .line 14
    return-object p0
.end method

.method public final setCredentialEntries(Ljava/util/List;)Landroidx/credentials/provider/BeginGetCredentialResponse$Builder;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/credentials/provider/CredentialEntry;",
            ">;)",
            "Landroidx/credentials/provider/BeginGetCredentialResponse$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "entries"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/util/Collection;

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->g1(Ljava/util/Collection;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Landroidx/credentials/provider/BeginGetCredentialResponse$Builder;->credentialEntries:Ljava/util/List;

    .line 13
    .line 14
    return-object p0
.end method

.method public final setRemoteEntry(Landroidx/credentials/provider/RemoteEntry;)Landroidx/credentials/provider/BeginGetCredentialResponse$Builder;
    .locals 0
    .param p1    # Landroidx/credentials/provider/RemoteEntry;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/credentials/provider/BeginGetCredentialResponse$Builder;->remoteEntry:Landroidx/credentials/provider/RemoteEntry;

    .line 2
    .line 3
    return-object p0
.end method
