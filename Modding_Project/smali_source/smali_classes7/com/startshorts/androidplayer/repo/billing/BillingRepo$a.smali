.class public final Lcom/startshorts/androidplayer/repo/billing/BillingRepo$a;
.super Ljava/lang/Object;
.source "BillingRepo.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$d;


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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBillingRepo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BillingRepo.kt\ncom/startshorts/androidplayer/repo/billing/BillingRepo$mRemoteDS$2$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,645:1\n1863#2,2:646\n*S KotlinDebug\n*F\n+ 1 BillingRepo.kt\ncom/startshorts/androidplayer/repo/billing/BillingRepo$mRemoteDS$2$1$1\n*L\n70#1:646,2\n*E\n"
    }
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
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lzc/f;",
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
    if-eqz p2, :cond_2

    .line 7
    .line 8
    check-cast p2, Ljava/lang/Iterable;

    .line 9
    .line 10
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lzc/f;

    .line 25
    .line 26
    invoke-virtual {v0}, Lzc/f;->e()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    sget-object v2, Lzc/f$b;->c:Lzc/f$b$a;

    .line 31
    .line 32
    invoke-virtual {v2}, Lzc/f$b$a;->a()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-ne v1, v2, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0}, Lzc/f;->i()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_0

    .line 43
    .line 44
    invoke-virtual {v0}, Lzc/f;->d()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const/4 v2, 0x0

    .line 49
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Ljava/lang/CharSequence;

    .line 54
    .line 55
    sget-object v3, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 56
    .line 57
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->z()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    const/4 v5, 0x2

    .line 62
    const/4 v6, 0x0

    .line 63
    invoke-static {v1, v4, v2, v5, v6}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    invoke-virtual {v3, p1, v0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->J(Ljava/lang/String;Lzc/f;)Lkotlinx/coroutines/r;

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {v3, p1, v0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->D(Ljava/lang/String;Lzc/f;)Lkotlinx/coroutines/r;

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    return-void
.end method
