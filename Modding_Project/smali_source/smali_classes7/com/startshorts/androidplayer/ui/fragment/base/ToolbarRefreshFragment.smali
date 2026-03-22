.class public Lcom/startshorts/androidplayer/ui/fragment/base/ToolbarRefreshFragment;
.super Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;
.source "ToolbarRefreshFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/base/ToolbarRefreshFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "VDB:",
        "Landroidx/databinding/ViewDataBinding;",
        ">",
        "Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment<",
        "TD;TVDB;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final F:Lcom/startshorts/androidplayer/ui/fragment/base/ToolbarRefreshFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/base/ToolbarRefreshFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/ToolbarRefreshFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/base/ToolbarRefreshFragment;->F:Lcom/startshorts/androidplayer/ui/fragment/base/ToolbarRefreshFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public q()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "ToolbarRefreshFragment"

    .line 2
    .line 3
    return-object v0
.end method
