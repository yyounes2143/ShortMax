.class public final Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;
.source "OneTimeTaskAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter$a;,
        Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter$b;,
        Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/task/Task;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final q:Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final o:I

.field private p:Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter$b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter;->q:Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter$a;

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
    const/high16 v0, 0x42200000    # 40.0f

    .line 9
    .line 10
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter;->o:I

    .line 15
    .line 16
    return-void
.end method

.method public static final synthetic E(Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter;->o:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public final F()Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter$b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter;->p:Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final G(Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter$b;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter;->p:Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter$b;

    .line 2
    .line 3
    return-void
.end method

.method public p()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public q()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "OneTimeTaskAdapter"

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
            "Lcom/startshorts/androidplayer/bean/task/Task;",
            ">.ViewHolder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p2, "parent"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter$c;

    .line 7
    .line 8
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_novice_task:I

    .line 9
    .line 10
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemNoviceTaskBinding;

    .line 15
    .line 16
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter$c;-><init>(Lcom/startshorts/androidplayer/adapter/rewards/OneTimeTaskAdapter;Lcom/startshorts/androidplayer/databinding/ItemNoviceTaskBinding;)V

    .line 17
    .line 18
    .line 19
    return-object p2
.end method
