.class public final Landroidx/compose/ui/semantics/NodeLocationHolder$Companion;
.super Ljava/lang/Object;
.source "SemanticsSort.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/semantics/NodeLocationHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/semantics/NodeLocationHolder$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getComparisonStrategy$ui_release()Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/compose/ui/semantics/NodeLocationHolder;->access$getComparisonStrategy$cp()Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final setComparisonStrategy$ui_release(Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroidx/compose/ui/semantics/NodeLocationHolder;->access$setComparisonStrategy$cp(Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
