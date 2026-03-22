.class final Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$f;
.super Ljava/lang/Object;
.source "RewardsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->O1(Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/jvm/functions/Function0<",
        "+",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRewardsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$checkShowAd2PayDialog$1$1\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt\n*L\n1#1,1701:1\n19#2,5:1702\n*S KotlinDebug\n*F\n+ 1 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$checkShowAd2PayDialog$1$1\n*L\n746#1:1702,5\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

.field final synthetic b:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lkotlin/jvm/functions/Function0;Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$f;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$f;->b:Lkotlin/jvm/functions/Function0;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$f;->c:Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Lkotlin/jvm/functions/Function0;)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 1
    const-string v0, "onDismiss"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$f$a;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$f;->b:Lkotlin/jvm/functions/Function0;

    .line 9
    .line 10
    invoke-direct {v0, p1, v1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$f$a;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$f;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$f;->c:Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;

    .line 16
    .line 17
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$f$b;

    .line 18
    .line 19
    invoke-direct {v2, v1, p1, v0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$f$b;-><init>(Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lkotlin/jvm/functions/Function0;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$f$c;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$f$c;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v2, v1}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 28
    .line 29
    .line 30
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 31
    .line 32
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$f;->a(Lkotlin/jvm/functions/Function0;)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
