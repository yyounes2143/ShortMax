.class public final Lcom/startshorts/androidplayer/adapter/immersion/PlayResolutionExperimentAdapter;
.super Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;
.source "PlayResolutionExperimentAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/adapter/immersion/PlayResolutionExperimentAdapter$a;,
        Lcom/startshorts/androidplayer/adapter/immersion/PlayResolutionExperimentAdapter$b;,
        Lcom/startshorts/androidplayer/adapter/immersion/PlayResolutionExperimentAdapter$c;
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
.field public static final w:Lcom/startshorts/androidplayer/adapter/immersion/PlayResolutionExperimentAdapter$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/immersion/PlayResolutionExperimentAdapter$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/adapter/immersion/PlayResolutionExperimentAdapter$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/adapter/immersion/PlayResolutionExperimentAdapter;->w:Lcom/startshorts/androidplayer/adapter/immersion/PlayResolutionExperimentAdapter$a;

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
    sget-object v1, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->e1()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->isEnable()Lkotlin/jvm/functions/Function0;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Ljava/lang/Boolean;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolutionValue()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-ne p1, v3, :cond_4

    .line 74
    .line 75
    const/4 v0, 0x2

    .line 76
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
    if-ne p2, p3, :cond_0

    .line 8
    .line 9
    new-instance p2, Lcom/startshorts/androidplayer/adapter/immersion/PlayResolutionExperimentAdapter$c;

    .line 10
    .line 11
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_play_resolution_experiment_text_icon:I

    .line 12
    .line 13
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemPlayResolutionExperimentTextIconBinding;

    .line 18
    .line 19
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/immersion/PlayResolutionExperimentAdapter$c;-><init>(Lcom/startshorts/androidplayer/adapter/immersion/PlayResolutionExperimentAdapter;Lcom/startshorts/androidplayer/databinding/ItemPlayResolutionExperimentTextIconBinding;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance p2, Lcom/startshorts/androidplayer/adapter/immersion/PlayResolutionExperimentAdapter$b;

    .line 24
    .line 25
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_play_resolution_experiment_text:I

    .line 26
    .line 27
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemPlayResolutionExperimentTextBinding;

    .line 32
    .line 33
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/immersion/PlayResolutionExperimentAdapter$b;-><init>(Lcom/startshorts/androidplayer/adapter/immersion/PlayResolutionExperimentAdapter;Lcom/startshorts/androidplayer/databinding/ItemPlayResolutionExperimentTextBinding;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-object p2
.end method
