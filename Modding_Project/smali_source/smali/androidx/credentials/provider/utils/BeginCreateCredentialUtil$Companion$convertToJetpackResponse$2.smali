.class final Landroidx/credentials/provider/utils/BeginCreateCredentialUtil$Companion$convertToJetpackResponse$2;
.super Lkotlin/jvm/internal/Lambda;
.source "BeginCreateCredentialUtil.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/credentials/provider/utils/BeginCreateCredentialUtil$Companion;->convertToJetpackResponse(Landroid/service/credentials/BeginCreateCredentialResponse;)Landroidx/credentials/provider/BeginCreateCredentialResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/credentials/provider/CreateEntry;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/credentials/provider/utils/BeginCreateCredentialUtil$Companion$convertToJetpackResponse$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/credentials/provider/utils/BeginCreateCredentialUtil$Companion$convertToJetpackResponse$2;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/credentials/provider/utils/BeginCreateCredentialUtil$Companion$convertToJetpackResponse$2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/credentials/provider/utils/BeginCreateCredentialUtil$Companion$convertToJetpackResponse$2;->INSTANCE:Landroidx/credentials/provider/utils/BeginCreateCredentialUtil$Companion$convertToJetpackResponse$2;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/credentials/provider/CreateEntry;)Ljava/lang/Boolean;
    .locals 0
    .param p1    # Landroidx/credentials/provider/CreateEntry;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Landroidx/credentials/provider/CreateEntry;

    invoke-virtual {p0, p1}, Landroidx/credentials/provider/utils/BeginCreateCredentialUtil$Companion$convertToJetpackResponse$2;->invoke(Landroidx/credentials/provider/CreateEntry;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
