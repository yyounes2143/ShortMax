.class final Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$c;
.super Ljava/lang/Object;
.source "SwitchInfoFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSwitchInfoFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SwitchInfoFragment.kt\ncom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$mSwitchViewModel$2$1$2$3$1\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt\n*L\n1#1,199:1\n15#2,9:200\n*S KotlinDebug\n*F\n+ 1 SwitchInfoFragment.kt\ncom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$mSwitchViewModel$2$1$2$3$1\n*L\n88#1:200,9\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$c;->a:Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$c;->b:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$c;->a:Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$c;->b:Landroid/content/Context;

    .line 6
    .line 7
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$c$a;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$c$a;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$c$b;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$c$b;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {p1, v1, v0}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$c;->a(Z)V

    .line 8
    .line 9
    .line 10
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p1
.end method
