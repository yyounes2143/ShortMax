.class public final Lcom/startshorts/androidplayer/ui/fragment/base/PermissionDialogFragment$b;
.super Lmk/b;
.source "PermissionDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/base/PermissionDialogFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/base/PermissionDialogFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startshorts/androidplayer/ui/fragment/base/PermissionDialogFragment<",
            "TVDB;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/base/PermissionDialogFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/fragment/base/PermissionDialogFragment<",
            "TVDB;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/base/PermissionDialogFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/base/PermissionDialogFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Lmk/b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "permissions"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/base/PermissionDialogFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/base/PermissionDialogFragment;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/base/PermissionDialogFragment;->F(Lcom/startshorts/androidplayer/ui/fragment/base/PermissionDialogFragment;)Lmk/b;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lmk/b;->a(Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public b(ZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "permissions"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/base/PermissionDialogFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/base/PermissionDialogFragment;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/base/PermissionDialogFragment;->F(Lcom/startshorts/androidplayer/ui/fragment/base/PermissionDialogFragment;)Lmk/b;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Lmk/b;->b(ZLjava/util/List;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
