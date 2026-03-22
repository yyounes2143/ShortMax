.class final Lcom/vungle/ads/internal/model/BidPayload$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BidPayload.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/model/BidPayload;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/util/List;Lcom/vungle/ads/internal/model/AdPayload;Lvt/r2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlinx/serialization/json/c;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Lcom/vungle/ads/internal/model/BidPayload$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/model/BidPayload$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/vungle/ads/internal/model/BidPayload$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/vungle/ads/internal/model/BidPayload$1;->INSTANCE:Lcom/vungle/ads/internal/model/BidPayload$1;

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
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/serialization/json/c;

    invoke-virtual {p0, p1}, Lcom/vungle/ads/internal/model/BidPayload$1;->invoke(Lkotlinx/serialization/json/c;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lkotlinx/serialization/json/c;)V
    .locals 1
    .param p1    # Lkotlinx/serialization/json/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "$this$Json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lkotlinx/serialization/json/c;->f(Z)V

    .line 3
    invoke-virtual {p1, v0}, Lkotlinx/serialization/json/c;->d(Z)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lkotlinx/serialization/json/c;->e(Z)V

    return-void
.end method
