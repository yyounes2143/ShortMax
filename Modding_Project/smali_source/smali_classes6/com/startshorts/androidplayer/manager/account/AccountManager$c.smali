.class public final Lcom/startshorts/androidplayer/manager/account/AccountManager$c;
.super Lyd/d;
.source "AccountManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/account/AccountManager;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/hades/aar/activity/IDActivity;


# direct methods
.method constructor <init>(Lcom/hades/aar/activity/IDActivity;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/account/AccountManager$c;->e:Lcom/hades/aar/activity/IDActivity;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    invoke-direct {p0, v1, v2, p1, v0}, Lyd/d;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "v"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/account/AccountManager$c;->e:Lcom/hades/aar/activity/IDActivity;

    .line 8
    .line 9
    new-instance v0, Landroid/content/Intent;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/account/AccountManager$c;->e:Lcom/hades/aar/activity/IDActivity;

    .line 12
    .line 13
    const-class v2, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 16
    .line 17
    .line 18
    const-string v1, "from"

    .line 19
    .line 20
    const-string v2, "login_page"

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
