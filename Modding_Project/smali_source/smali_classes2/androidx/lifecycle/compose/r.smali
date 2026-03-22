.class public final synthetic Landroidx/lifecycle/compose/r;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:[Ljava/lang/Object;

.field public final synthetic b:Landroidx/lifecycle/LifecycleOwner;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>([Ljava/lang/Object;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/lifecycle/compose/r;->a:[Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/lifecycle/compose/r;->b:Landroidx/lifecycle/LifecycleOwner;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/lifecycle/compose/r;->c:Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    iput p4, p0, Landroidx/lifecycle/compose/r;->d:I

    .line 11
    .line 12
    iput p5, p0, Landroidx/lifecycle/compose/r;->e:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/compose/r;->a:[Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/lifecycle/compose/r;->b:Landroidx/lifecycle/LifecycleOwner;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/lifecycle/compose/r;->c:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    iget v3, p0, Landroidx/lifecycle/compose/r;->d:I

    .line 8
    .line 9
    iget v4, p0, Landroidx/lifecycle/compose/r;->e:I

    .line 10
    .line 11
    move-object v5, p1

    .line 12
    check-cast v5, Landroidx/compose/runtime/Composer;

    .line 13
    .line 14
    check-cast p2, Ljava/lang/Integer;

    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v6

    .line 20
    invoke-static/range {v0 .. v6}, Landroidx/lifecycle/compose/LifecycleEffectKt;->h([Ljava/lang/Object;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method
