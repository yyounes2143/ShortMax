.class public final Landroidx/credentials/PasswordCredential;
.super Landroidx/credentials/Credential;
.source "PasswordCredential.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/PasswordCredential$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPasswordCredential.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PasswordCredential.kt\nandroidx/credentials/PasswordCredential\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,77:1\n1#2:78\n*E\n"
    }
.end annotation


# static fields
.field public static final BUNDLE_KEY_ID:Ljava/lang/String; = "androidx.credentials.BUNDLE_KEY_ID"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final BUNDLE_KEY_PASSWORD:Ljava/lang/String; = "androidx.credentials.BUNDLE_KEY_PASSWORD"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Landroidx/credentials/PasswordCredential$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_PASSWORD_CREDENTIAL:Ljava/lang/String; = "android.credentials.TYPE_PASSWORD_CREDENTIAL"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final id:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final password:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/credentials/PasswordCredential$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/credentials/PasswordCredential$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/credentials/PasswordCredential;->Companion:Landroidx/credentials/PasswordCredential$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v0, Landroidx/credentials/PasswordCredential;->Companion:Landroidx/credentials/PasswordCredential$Companion;

    invoke-virtual {v0, p1, p2}, Landroidx/credentials/PasswordCredential$Companion;->toBundle$credentials_release(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/credentials/PasswordCredential;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 2
    const-string v0, "android.credentials.TYPE_PASSWORD_CREDENTIAL"

    invoke-direct {p0, v0, p3}, Landroidx/credentials/Credential;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3
    iput-object p1, p0, Landroidx/credentials/PasswordCredential;->id:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Landroidx/credentials/PasswordCredential;->password:Ljava/lang/String;

    .line 5
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "password should not be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/credentials/PasswordCredential;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static final createFrom$credentials_release(Landroid/os/Bundle;)Landroidx/credentials/PasswordCredential;
    .locals 1
    .param p0    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/credentials/PasswordCredential;->Companion:Landroidx/credentials/PasswordCredential$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroidx/credentials/PasswordCredential$Companion;->createFrom$credentials_release(Landroid/os/Bundle;)Landroidx/credentials/PasswordCredential;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static final toBundle$credentials_release(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/credentials/PasswordCredential;->Companion:Landroidx/credentials/PasswordCredential$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Landroidx/credentials/PasswordCredential$Companion;->toBundle$credentials_release(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/credentials/PasswordCredential;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPassword()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/credentials/PasswordCredential;->password:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
