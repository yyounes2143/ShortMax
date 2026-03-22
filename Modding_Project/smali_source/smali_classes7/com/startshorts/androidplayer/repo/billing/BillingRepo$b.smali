.class public final Lcom/startshorts/androidplayer/repo/billing/BillingRepo$b;
.super Ljava/lang/Object;
.source "BillingRepo.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/repo/billing/BillingRepo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lzc/h;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "opId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    move-object p1, p2

    .line 7
    check-cast p1, Ljava/util/Collection;

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object p1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->n(Lcom/startshorts/androidplayer/repo/billing/BillingRepo;)Lgg/c;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1, p2}, Lgg/c;->c(Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    sget-object p1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->o(Lcom/startshorts/androidplayer/repo/billing/BillingRepo;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->p(Lcom/startshorts/androidplayer/repo/billing/BillingRepo;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
