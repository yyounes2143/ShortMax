.class public final synthetic Landroidx/lifecycle/p;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Landroidx/lifecycle/MediatorLiveData;

.field public final synthetic b:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/MediatorLiveData;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/lifecycle/p;->a:Landroidx/lifecycle/MediatorLiveData;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/lifecycle/p;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/p;->a:Landroidx/lifecycle/MediatorLiveData;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/lifecycle/p;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Landroidx/lifecycle/Transformations;->d(Landroidx/lifecycle/MediatorLiveData;Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/Object;)Lkotlin/Unit;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
