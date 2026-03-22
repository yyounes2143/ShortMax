.class public final Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity$b;
.super Ljava/lang/Object;
.source "LoginActivity.kt"

# interfaces
.implements Lke/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;->U()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity$b;->a:Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/hades/aar/auth/base/AuthType;)V
    .locals 1

    .line 1
    const-string v0, "authType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity$b;->a:Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public b(Lcom/hades/aar/auth/base/AuthType;ILjava/lang/String;)V
    .locals 0

    .line 1
    const-string p2, "authType"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity$b;->a:Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;

    .line 7
    .line 8
    invoke-virtual {p1, p3}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->y(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
