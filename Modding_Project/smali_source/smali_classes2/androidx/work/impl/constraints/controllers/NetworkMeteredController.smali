.class public final Landroidx/work/impl/constraints/controllers/NetworkMeteredController;
.super Landroidx/work/impl/constraints/controllers/ConstraintController;
.source "ContraintControllers.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/constraints/controllers/NetworkMeteredController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/work/impl/constraints/controllers/ConstraintController<",
        "Landroidx/work/impl/constraints/NetworkState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Landroidx/work/impl/constraints/controllers/NetworkMeteredController$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/work/impl/constraints/controllers/NetworkMeteredController$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/work/impl/constraints/controllers/NetworkMeteredController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/work/impl/constraints/controllers/NetworkMeteredController;->Companion:Landroidx/work/impl/constraints/controllers/NetworkMeteredController$Companion;

    .line 8
    .line 9
    const-string v0, "NetworkMeteredCtrlr"

    .line 10
    .line 11
    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "tagWithPrefix(\"NetworkMeteredCtrlr\")"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Landroidx/work/impl/constraints/controllers/NetworkMeteredController;->TAG:Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V
    .locals 1
    .param p1    # Landroidx/work/impl/constraints/trackers/ConstraintTracker;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/constraints/trackers/ConstraintTracker<",
            "Landroidx/work/impl/constraints/NetworkState;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string/jumbo v0, "tracker"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroidx/work/impl/constraints/controllers/ConstraintController;-><init>(Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public hasConstraint(Landroidx/work/impl/model/WorkSpec;)Z
    .locals 1
    .param p1    # Landroidx/work/impl/model/WorkSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string/jumbo v0, "workSpec"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p1, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/work/Constraints;->getRequiredNetworkType()Landroidx/work/NetworkType;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    sget-object v0, Landroidx/work/NetworkType;->METERED:Landroidx/work/NetworkType;

    .line 14
    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method

.method public isConstrained(Landroidx/work/impl/constraints/NetworkState;)Z
    .locals 5
    .param p1    # Landroidx/work/impl/constraints/NetworkState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_1

    .line 3
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v0

    .line 4
    sget-object v1, Landroidx/work/impl/constraints/controllers/NetworkMeteredController;->TAG:Ljava/lang/String;

    const-string v4, "Metered network constraint is not supported before API 26, only checking for connected state."

    .line 5
    invoke-virtual {v0, v1, v4}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Landroidx/work/impl/constraints/NetworkState;->isConnected()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_0
    :goto_0
    move v2, v3

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroidx/work/impl/constraints/NetworkState;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/work/impl/constraints/NetworkState;->isMetered()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return v2
.end method

.method public bridge synthetic isConstrained(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Landroidx/work/impl/constraints/NetworkState;

    invoke-virtual {p0, p1}, Landroidx/work/impl/constraints/controllers/NetworkMeteredController;->isConstrained(Landroidx/work/impl/constraints/NetworkState;)Z

    move-result p1

    return p1
.end method
