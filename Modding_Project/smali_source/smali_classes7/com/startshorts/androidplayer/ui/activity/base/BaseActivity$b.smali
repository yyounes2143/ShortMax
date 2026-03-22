.class public final Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity$b;
.super Landroid/view/ContextThemeWrapper;
.source "BaseActivity.kt"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "PrivateResource"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->attachBaseContext(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Landroid/content/res/Configuration;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;I)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity$b;->a:Landroid/content/res/Configuration;

    .line 2
    .line 3
    invoke-direct {p0, p1, p3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    const-string v0, "overrideConfiguration"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity$b;->a:Landroid/content/res/Configuration;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
