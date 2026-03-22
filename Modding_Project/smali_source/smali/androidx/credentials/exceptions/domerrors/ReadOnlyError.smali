.class public final Landroidx/credentials/exceptions/domerrors/ReadOnlyError;
.super Landroidx/credentials/exceptions/domerrors/DomError;
.source "ReadOnlyError.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/credentials/exceptions/domerrors/ReadOnlyError$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Landroidx/credentials/exceptions/domerrors/ReadOnlyError$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_CREATE_PUBLIC_KEY_CREDENTIAL_READ_ONLY_ERROR:Ljava/lang/String; = "androidx.credentials.TYPE_READ_ONLY_ERROR"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/credentials/exceptions/domerrors/ReadOnlyError$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/credentials/exceptions/domerrors/ReadOnlyError$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/credentials/exceptions/domerrors/ReadOnlyError;->Companion:Landroidx/credentials/exceptions/domerrors/ReadOnlyError$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "androidx.credentials.TYPE_READ_ONLY_ERROR"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroidx/credentials/exceptions/domerrors/DomError;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
