.class final Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter$b;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "ProfileMenuAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/profile/ProfileMenu;",
        ">.ViewHolder;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemProfileMenuNormalBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic h:Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter;Lcom/startshorts/androidplayer/databinding/ItemProfileMenuNormalBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemProfileMenuNormalBinding;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter$b;->h:Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter$b;->g:Lcom/startshorts/androidplayer/databinding/ItemProfileMenuNormalBinding;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemProfileMenuNormalBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public j()Lcom/startshorts/androidplayer/databinding/ItemProfileMenuNormalBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter$b;->g:Lcom/startshorts/androidplayer/databinding/ItemProfileMenuNormalBinding;

    .line 2
    .line 3
    return-object v0
.end method
