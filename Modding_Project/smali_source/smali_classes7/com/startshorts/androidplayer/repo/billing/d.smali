.class public final synthetic Lcom/startshorts/androidplayer/repo/billing/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic b:Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/startshorts/androidplayer/bean/subs/SubsSku;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/billing/d;->a:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/startshorts/androidplayer/repo/billing/d;->b:Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/startshorts/androidplayer/repo/billing/d;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/startshorts/androidplayer/repo/billing/d;->d:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/billing/d;->a:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/billing/d;->b:Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/repo/billing/d;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/startshorts/androidplayer/repo/billing/d;->d:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3, p1}, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;->a(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Landroid/content/DialogInterface;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
