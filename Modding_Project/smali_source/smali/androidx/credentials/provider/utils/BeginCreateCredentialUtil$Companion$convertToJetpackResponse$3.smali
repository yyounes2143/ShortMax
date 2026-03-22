.class final Landroidx/credentials/provider/utils/BeginCreateCredentialUtil$Companion$convertToJetpackResponse$3;
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
        "Landroidx/credentials/provider/CreateEntry;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/credentials/provider/utils/BeginCreateCredentialUtil$Companion$convertToJetpackResponse$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/credentials/provider/utils/BeginCreateCredentialUtil$Companion$convertToJetpackResponse$3;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/credentials/provider/utils/BeginCreateCredentialUtil$Companion$convertToJetpackResponse$3;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/credentials/provider/utils/BeginCreateCredentialUtil$Companion$convertToJetpackResponse$3;->INSTANCE:Landroidx/credentials/provider/utils/BeginCreateCredentialUtil$Companion$convertToJetpackResponse$3;

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
.method public final invoke(Landroidx/credentials/provider/CreateEntry;)Landroidx/credentials/provider/CreateEntry;
    .locals 0
    .param p1    # Landroidx/credentials/provider/CreateEntry;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Landroidx/credentials/provider/CreateEntry;

    invoke-virtual {p0, p1}, Landroidx/credentials/provider/utils/BeginCreateCredentialUtil$Companion$convertToJetpackResponse$3;->invoke(Landroidx/credentials/provider/CreateEntry;)Landroidx/credentials/provider/CreateEntry;

    move-result-object p1

    return-object p1
.end method
