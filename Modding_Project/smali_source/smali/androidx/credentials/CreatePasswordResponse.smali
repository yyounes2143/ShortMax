.class public final Landroidx/credentials/CreatePasswordResponse;
.super Landroidx/credentials/CreateCredentialResponse;
.source "CreatePasswordResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/CreatePasswordResponse$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Landroidx/credentials/CreatePasswordResponse$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/credentials/CreatePasswordResponse$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/credentials/CreatePasswordResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/credentials/CreatePasswordResponse;->Companion:Landroidx/credentials/CreatePasswordResponse$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0}, Landroidx/credentials/CreatePasswordResponse;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    .line 2
    const-string v0, "android.credentials.TYPE_PASSWORD_CREDENTIAL"

    .line 3
    invoke-direct {p0, v0, p1}, Landroidx/credentials/CreateCredentialResponse;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Bundle;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/credentials/CreatePasswordResponse;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method public static final createFrom$credentials_release(Landroid/os/Bundle;)Landroidx/credentials/CreatePasswordResponse;
    .locals 1
    .param p0    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/credentials/CreatePasswordResponse;->Companion:Landroidx/credentials/CreatePasswordResponse$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroidx/credentials/CreatePasswordResponse$Companion;->createFrom$credentials_release(Landroid/os/Bundle;)Landroidx/credentials/CreatePasswordResponse;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
