.class public final synthetic Lle/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lle/e;->a:Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lle/e;->a:Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->f(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
