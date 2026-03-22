.class final Landroidx/compose/foundation/IndicationModifier;
.super Ljava/lang/Object;
.source "Indication.kt"

# interfaces
.implements Landroidx/compose/ui/draw/DrawModifier;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final indicationInstance:Landroidx/compose/foundation/IndicationInstance;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/IndicationInstance;)V
    .locals 1
    .param p1    # Landroidx/compose/foundation/IndicationInstance;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "indicationInstance"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroidx/compose/foundation/IndicationModifier;->indicationInstance:Landroidx/compose/foundation/IndicationInstance;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public draw(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/foundation/IndicationModifier;->indicationInstance:Landroidx/compose/foundation/IndicationInstance;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Landroidx/compose/foundation/IndicationInstance;->drawIndication(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final getIndicationInstance()Landroidx/compose/foundation/IndicationInstance;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/IndicationModifier;->indicationInstance:Landroidx/compose/foundation/IndicationInstance;

    .line 2
    .line 3
    return-object v0
.end method
