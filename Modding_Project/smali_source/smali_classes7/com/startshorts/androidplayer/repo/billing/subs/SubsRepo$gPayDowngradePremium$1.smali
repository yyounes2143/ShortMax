.class final Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SubsRepo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lzc/f;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
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
        0xbe,
        0xc6,
        0xdb,
        0xe2,
        0xe5
    }
    m = "gPayDowngradePremium"
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:Ljava/lang/Object;

.field j:Ljava/lang/Object;

.field k:Ljava/lang/Object;

.field l:Ljava/lang/Object;

.field synthetic m:Ljava/lang/Object;

.field final synthetic n:Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;

.field o:I


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;->n:Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;

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
    .locals 11
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;->m:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;->o:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;->o:I

    .line 9
    .line 10
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo$gPayDowngradePremium$1;->n:Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;

    .line 11
    .line 12
    const/4 v8, 0x0

    .line 13
    const/4 v9, 0x0

    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x0

    .line 19
    const/4 v6, 0x0

    .line 20
    const/4 v7, 0x0

    .line 21
    move-object v10, p0

    .line 22
    invoke-virtual/range {v0 .. v10}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lzc/f;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method
