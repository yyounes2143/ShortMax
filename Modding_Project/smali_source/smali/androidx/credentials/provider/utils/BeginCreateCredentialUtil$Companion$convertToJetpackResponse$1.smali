.class final Landroidx/credentials/provider/utils/BeginCreateCredentialUtil$Companion$convertToJetpackResponse$1;
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
        "Landroid/service/credentials/CreateEntry;",
        "Landroidx/credentials/provider/CreateEntry;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/credentials/provider/utils/BeginCreateCredentialUtil$Companion$convertToJetpackResponse$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/credentials/provider/utils/BeginCreateCredentialUtil$Companion$convertToJetpackResponse$1;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/credentials/provider/utils/BeginCreateCredentialUtil$Companion$convertToJetpackResponse$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/credentials/provider/utils/BeginCreateCredentialUtil$Companion$convertToJetpackResponse$1;->INSTANCE:Landroidx/credentials/provider/utils/BeginCreateCredentialUtil$Companion$convertToJetpackResponse$1;

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
.method public final invoke(Landroid/service/credentials/CreateEntry;)Landroidx/credentials/provider/CreateEntry;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Landroidx/credentials/provider/CreateEntry;->Companion:Landroidx/credentials/provider/CreateEntry$Companion;

    invoke-static {p1}, Landroidx/credentials/provider/utils/u;->a(Landroid/service/credentials/CreateEntry;)Landroid/app/slice/Slice;

    move-result-object p1

    const-string v1, "entry.slice"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroidx/credentials/provider/CreateEntry$Companion;->fromSlice(Landroid/app/slice/Slice;)Landroidx/credentials/provider/CreateEntry;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-static {p1}, Landroidx/credentials/provider/utils/v;->a(Ljava/lang/Object;)Landroid/service/credentials/CreateEntry;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/credentials/provider/utils/BeginCreateCredentialUtil$Companion$convertToJetpackResponse$1;->invoke(Landroid/service/credentials/CreateEntry;)Landroidx/credentials/provider/CreateEntry;

    move-result-object p1

    return-object p1
.end method
