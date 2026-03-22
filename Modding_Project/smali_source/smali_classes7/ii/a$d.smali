.class public final Lii/a$d;
.super Lyd/d;
.source "HomeLoginGuideDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lii/a;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lii/a;


# direct methods
.method constructor <init>(Lii/a;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lii/a$d;->e:Lii/a;

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
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lii/a$d;->e:Lii/a;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-static {p1, v0}, Lii/a;->u(Lii/a;Z)V

    .line 10
    .line 11
    .line 12
    sget-object p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->J0()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lii/a$d;->e:Lii/a;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    new-instance v0, Landroid/content/Intent;

    .line 27
    .line 28
    iget-object v1, p0, Lii/a$d;->e:Lii/a;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-class v2, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;

    .line 35
    .line 36
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .line 38
    .line 39
    const-string v1, "from"

    .line 40
    .line 41
    const-string v2, "discover"

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    iget-object p1, p0, Lii/a$d;->e:Lii/a;

    .line 50
    .line 51
    invoke-virtual {p1}, Lii/a;->dismiss()V

    .line 52
    .line 53
    .line 54
    return-void
.end method
