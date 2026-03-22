.class public final Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel$c;
.super Ljava/lang/Object;
.source "BindViewModel.kt"

# interfaces
.implements Lke/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel;->E(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel$c;->a:Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel;

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
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel$c;->a:Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel;->D()Landroidx/lifecycle/MutableLiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    new-instance p2, Lcom/startshorts/androidplayer/viewmodel/auth/b$d;

    .line 13
    .line 14
    invoke-direct {p2, p3}, Lcom/startshorts/androidplayer/viewmodel/auth/b$d;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1, p2}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
