.class public final Landroidx/credentials/CredentialManager$Companion;
.super Ljava/lang/Object;
.source "CredentialManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/CredentialManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Landroidx/credentials/CredentialManager$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/credentials/CredentialManager$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/credentials/CredentialManager$Companion;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/credentials/CredentialManager$Companion;->$$INSTANCE:Landroidx/credentials/CredentialManager$Companion;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final create(Landroid/content/Context;)Landroidx/credentials/CredentialManager;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/credentials/CredentialManagerImpl;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Landroidx/credentials/CredentialManagerImpl;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
