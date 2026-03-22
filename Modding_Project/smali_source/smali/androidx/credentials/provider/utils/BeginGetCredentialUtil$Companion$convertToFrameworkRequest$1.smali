.class final Landroidx/credentials/provider/utils/BeginGetCredentialUtil$Companion$convertToFrameworkRequest$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BeginGetCredentialUtil.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/credentials/provider/utils/BeginGetCredentialUtil$Companion;->convertToFrameworkRequest(Landroidx/credentials/provider/BeginGetCredentialRequest;)Landroid/service/credentials/BeginGetCredentialRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/credentials/provider/BeginGetCredentialOption;",
        "Landroid/service/credentials/BeginGetCredentialOption;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/credentials/provider/utils/BeginGetCredentialUtil$Companion$convertToFrameworkRequest$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/credentials/provider/utils/BeginGetCredentialUtil$Companion$convertToFrameworkRequest$1;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/credentials/provider/utils/BeginGetCredentialUtil$Companion$convertToFrameworkRequest$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/credentials/provider/utils/BeginGetCredentialUtil$Companion$convertToFrameworkRequest$1;->INSTANCE:Landroidx/credentials/provider/utils/BeginGetCredentialUtil$Companion$convertToFrameworkRequest$1;

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
.method public final invoke(Landroidx/credentials/provider/BeginGetCredentialOption;)Landroid/service/credentials/BeginGetCredentialOption;
    .locals 2

    .line 1
    sget-object v0, Landroidx/credentials/provider/utils/BeginGetCredentialUtil;->Companion:Landroidx/credentials/provider/utils/BeginGetCredentialUtil$Companion;

    const-string v1, "option"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Landroidx/credentials/provider/utils/BeginGetCredentialUtil$Companion;->access$convertToJetpackBeginOption(Landroidx/credentials/provider/utils/BeginGetCredentialUtil$Companion;Landroidx/credentials/provider/BeginGetCredentialOption;)Landroid/service/credentials/BeginGetCredentialOption;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Landroidx/credentials/provider/BeginGetCredentialOption;

    invoke-virtual {p0, p1}, Landroidx/credentials/provider/utils/BeginGetCredentialUtil$Companion$convertToFrameworkRequest$1;->invoke(Landroidx/credentials/provider/BeginGetCredentialOption;)Landroid/service/credentials/BeginGetCredentialOption;

    move-result-object p1

    return-object p1
.end method
