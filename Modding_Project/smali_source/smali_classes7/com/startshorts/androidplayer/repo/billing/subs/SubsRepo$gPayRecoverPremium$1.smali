.class final Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayRecoverPremium$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SubsRepo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;->e(ZLjava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lzc/f;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.startshorts.androidplayer.repo.billing.subs.SubsRepo"
    f = "SubsRepo.kt"
    l = {
        0xed,
        0x10e
    }
    m = "gPayRecoverPremium"
.end annotation


# instance fields
.field h:Z

.field i:Ljava/lang/Object;

.field j:Ljava/lang/Object;

.field k:Ljava/lang/Object;

.field synthetic l:Ljava/lang/Object;

.field final synthetic m:Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;

.field n:I


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayRecoverPremium$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayRecoverPremium$1;->m:Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lrs/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayRecoverPremium$1;->l:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayRecoverPremium$1;->n:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayRecoverPremium$1;->n:I

    .line 9
    .line 10
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayRecoverPremium$1;->m:Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    move-object v5, p0

    .line 17
    invoke-virtual/range {v0 .. v5}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;->e(ZLjava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lzc/f;Lrs/c;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method
