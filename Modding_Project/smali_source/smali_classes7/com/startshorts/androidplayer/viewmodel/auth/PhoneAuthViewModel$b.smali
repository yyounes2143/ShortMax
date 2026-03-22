.class public final Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$b;
.super Ljava/lang/Object;
.source "PhoneAuthViewModel.kt"

# interfaces
.implements Lke/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->O(Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

.field final synthetic b:Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;

.field final synthetic c:Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$b;->a:Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$b;->b:Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$b;->c:Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Lcom/hades/aar/auth/base/AuthType;)V
    .locals 2

    .line 1
    const-string v0, "authType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$b;->a:Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 7
    .line 8
    const-string v1, "bindResultListener succeed"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/auth/a;->m(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$b;->b:Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;

    .line 14
    .line 15
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->H(Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;Lcom/hades/aar/auth/base/AuthType;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public b(Lcom/hades/aar/auth/base/AuthType;ILjava/lang/String;)V
    .locals 1

    .line 1
    const-string p2, "authType"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$b;->b:Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel$b;->c:Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer;

    .line 9
    .line 10
    invoke-static {p2, v0, p1, p3}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->G(Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer;Lcom/hades/aar/auth/base/AuthType;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
