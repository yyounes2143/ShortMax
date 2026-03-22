.class public final Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;
.super Ljava/lang/Object;
.source "PublicKeyCredentialEntry.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/provider/PublicKeyCredentialEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private autoSelectAllowed:Z

.field private final beginGetPublicKeyCredentialOption:Landroidx/credentials/provider/BeginGetPublicKeyCredentialOption;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private displayName:Ljava/lang/CharSequence;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private icon:Landroid/graphics/drawable/Icon;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lastUsedTime:Ljava/time/Instant;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final pendingIntent:Landroid/app/PendingIntent;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final username:Ljava/lang/CharSequence;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroidx/credentials/provider/BeginGetPublicKeyCredentialOption;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/app/PendingIntent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/credentials/provider/BeginGetPublicKeyCredentialOption;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "username"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "pendingIntent"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "beginGetPublicKeyCredentialOption"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;->context:Landroid/content/Context;

    .line 25
    .line 26
    iput-object p2, p0, Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;->username:Ljava/lang/CharSequence;

    .line 27
    .line 28
    iput-object p3, p0, Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;->pendingIntent:Landroid/app/PendingIntent;

    .line 29
    .line 30
    iput-object p4, p0, Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;->beginGetPublicKeyCredentialOption:Landroidx/credentials/provider/BeginGetPublicKeyCredentialOption;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final build()Landroidx/credentials/provider/PublicKeyCredentialEntry;
    .locals 15
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;->icon:Landroid/graphics/drawable/Icon;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;->context:Landroid/content/Context;

    .line 6
    .line 7
    sget v1, Landroidx/credentials/R$drawable;->ic_passkey:I

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;->icon:Landroid/graphics/drawable/Icon;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;->context:Landroid/content/Context;

    .line 16
    .line 17
    sget v1, Landroidx/credentials/R$string;->androidx_credentials_TYPE_PUBLIC_KEY_CREDENTIAL:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    const-string v0, "context.getString(\n     \u2026_CREDENTIAL\n            )"

    .line 24
    .line 25
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Landroidx/credentials/provider/PublicKeyCredentialEntry;

    .line 29
    .line 30
    iget-object v3, p0, Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;->username:Ljava/lang/CharSequence;

    .line 31
    .line 32
    iget-object v4, p0, Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;->displayName:Ljava/lang/CharSequence;

    .line 33
    .line 34
    iget-object v6, p0, Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;->pendingIntent:Landroid/app/PendingIntent;

    .line 35
    .line 36
    iget-object v7, p0, Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;->icon:Landroid/graphics/drawable/Icon;

    .line 37
    .line 38
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object v8, p0, Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;->lastUsedTime:Ljava/time/Instant;

    .line 42
    .line 43
    iget-boolean v9, p0, Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;->autoSelectAllowed:Z

    .line 44
    .line 45
    iget-object v10, p0, Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;->beginGetPublicKeyCredentialOption:Landroidx/credentials/provider/BeginGetPublicKeyCredentialOption;

    .line 46
    .line 47
    const/16 v13, 0x300

    .line 48
    .line 49
    const/4 v14, 0x0

    .line 50
    const/4 v11, 0x0

    .line 51
    const/4 v12, 0x0

    .line 52
    move-object v2, v0

    .line 53
    invoke-direct/range {v2 .. v14}, Landroidx/credentials/provider/PublicKeyCredentialEntry;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;Ljava/time/Instant;ZLandroidx/credentials/provider/BeginGetPublicKeyCredentialOption;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 54
    .line 55
    .line 56
    return-object v0
.end method

.method public final setAutoSelectAllowed(Z)Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;->autoSelectAllowed:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final setDisplayName(Ljava/lang/CharSequence;)Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;->displayName:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Icon;)Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;
    .locals 1
    .param p1    # Landroid/graphics/drawable/Icon;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "icon"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;->icon:Landroid/graphics/drawable/Icon;

    .line 7
    .line 8
    return-object p0
.end method

.method public final setLastUsedTime(Ljava/time/Instant;)Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;
    .locals 0
    .param p1    # Ljava/time/Instant;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/credentials/provider/PublicKeyCredentialEntry$Builder;->lastUsedTime:Ljava/time/Instant;

    .line 2
    .line 3
    return-object p0
.end method
