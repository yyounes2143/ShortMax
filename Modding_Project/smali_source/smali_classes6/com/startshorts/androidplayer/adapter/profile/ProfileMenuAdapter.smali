.class public final Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;
.source "ProfileMenuAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter$a;,
        Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter$b;,
        Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/profile/ProfileMenu;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final p:Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter;->p:Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final E()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter;->o:I

    .line 2
    .line 3
    return v0
.end method

.method public final F(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter;->o:I

    .line 2
    .line 3
    return-void
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/startshorts/androidplayer/bean/profile/ProfileMenu;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/profile/ProfileMenu;->getType()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    return p1
.end method

.method public q()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "ProfileMenuAdapter"

    .line 2
    .line 3
    return-object v0
.end method

.method public x(Landroid/view/ViewGroup;II)Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "II)",
            "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
            "Lcom/startshorts/androidplayer/bean/profile/ProfileMenu;",
            ">.ViewHolder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p3, "parent"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p3, 0x1

    .line 7
    if-ne p2, p3, :cond_0

    .line 8
    .line 9
    new-instance p2, Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter$c;

    .line 10
    .line 11
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_profile_menu_rewards:I

    .line 12
    .line 13
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemProfileMenuRewardsBinding;

    .line 18
    .line 19
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter$c;-><init>(Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter;Lcom/startshorts/androidplayer/databinding/ItemProfileMenuRewardsBinding;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance p2, Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter$b;

    .line 24
    .line 25
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_profile_menu_normal:I

    .line 26
    .line 27
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemProfileMenuNormalBinding;

    .line 32
    .line 33
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter$b;-><init>(Lcom/startshorts/androidplayer/adapter/profile/ProfileMenuAdapter;Lcom/startshorts/androidplayer/databinding/ItemProfileMenuNormalBinding;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-object p2
.end method
