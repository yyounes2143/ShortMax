.class final Lcom/vungle/ads/internal/AdInternal$AdState$NEW;
.super Lcom/vungle/ads/internal/AdInternal$AdState;
.source "AdInternal.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/AdInternal$AdState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NEW"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/vungle/ads/internal/AdInternal$AdState;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public canTransitionTo(Lcom/vungle/ads/internal/AdInternal$AdState;)Z
    .locals 1
    .param p1    # Lcom/vungle/ads/internal/AdInternal$AdState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "adState"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/vungle/ads/internal/AdInternal$AdState;->LOADING:Lcom/vungle/ads/internal/AdInternal$AdState;

    .line 7
    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    sget-object v0, Lcom/vungle/ads/internal/AdInternal$AdState;->READY:Lcom/vungle/ads/internal/AdInternal$AdState;

    .line 11
    .line 12
    if-eq p1, v0, :cond_1

    .line 13
    .line 14
    sget-object v0, Lcom/vungle/ads/internal/AdInternal$AdState;->ERROR:Lcom/vungle/ads/internal/AdInternal$AdState;

    .line 15
    .line 16
    if-ne p1, v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 22
    :goto_1
    return p1
.end method
