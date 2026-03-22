.class public final Lcom/startshorts/androidplayer/adapter/immersion/PlayResolutionAdapter;
.super Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;
.source "PlayResolutionAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/adapter/immersion/PlayResolutionAdapter$a;,
        Lcom/startshorts/androidplayer/adapter/immersion/PlayResolutionAdapter$b;,
        Lcom/startshorts/androidplayer/adapter/immersion/PlayResolutionAdapter$c;,
        Lcom/startshorts/androidplayer/adapter/immersion/PlayResolutionAdapter$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter<",
        "Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final w:Lcom/startshorts/androidplayer/adapter/immersion/PlayResolutionAdapter$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/immersion/PlayResolutionAdapter$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/adapter/immersion/PlayResolutionAdapter$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/adapter/immersion/PlayResolutionAdapter;->w:Lcom/startshorts/androidplayer/adapter/immersion/PlayResolutionAdapter$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-direct {p0, v2, v0, v1}, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->m()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ljava/lang/Iterable;

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/16 v3, 0x438

    .line 26
    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    move-object v4, v2

    .line 34
    check-cast v4, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 35
    .line 36
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolutionValue()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-ne v4, v3, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const/4 v2, 0x0

    .line 44
    :goto_0
    if-eqz v2, :cond_4

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolutionValue()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-ne p1, v3, :cond_3

    .line 51
    .line 52
    const/4 v0, 0x3

    .line 53
    goto :goto_1

    .line 54
    :cond_3
    const/4 v0, 0x2

    .line 55
    :cond_4
    :goto_1
    return v0
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
            "Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;",
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
    const/4 p3, 0x2

    .line 7
    if-eq p2, p3, :cond_1

    .line 8
    .line 9
    const/4 p3, 0x3

    .line 10
    if-eq p2, p3, :cond_0

    .line 11
    .line 12
    new-instance p2, Lcom/startshorts/androidplayer/adapter/immersion/PlayResolutionAdapter$b;

    .line 13
    .line 14
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_play_resolution_text_center:I

    .line 15
    .line 16
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemPlayResolutionTextCenterBinding;

    .line 21
    .line 22
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/immersion/PlayResolutionAdapter$b;-><init>(Lcom/startshorts/androidplayer/adapter/immersion/PlayResolutionAdapter;Lcom/startshorts/androidplayer/databinding/ItemPlayResolutionTextCenterBinding;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p2, Lcom/startshorts/androidplayer/adapter/immersion/PlayResolutionAdapter$c;

    .line 27
    .line 28
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_play_resolution_text_icon:I

    .line 29
    .line 30
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemPlayResolutionTextIconBinding;

    .line 35
    .line 36
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/immersion/PlayResolutionAdapter$c;-><init>(Lcom/startshorts/androidplayer/adapter/immersion/PlayResolutionAdapter;Lcom/startshorts/androidplayer/databinding/ItemPlayResolutionTextIconBinding;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    new-instance p2, Lcom/startshorts/androidplayer/adapter/immersion/PlayResolutionAdapter$d;

    .line 41
    .line 42
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_play_resolution_text_left:I

    .line 43
    .line 44
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemPlayResolutionTextLeftBinding;

    .line 49
    .line 50
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/immersion/PlayResolutionAdapter$d;-><init>(Lcom/startshorts/androidplayer/adapter/immersion/PlayResolutionAdapter;Lcom/startshorts/androidplayer/databinding/ItemPlayResolutionTextLeftBinding;)V

    .line 51
    .line 52
    .line 53
    :goto_0
    return-object p2
.end method
