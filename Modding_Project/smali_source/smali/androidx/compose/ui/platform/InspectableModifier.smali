.class public final Landroidx/compose/ui/platform/InspectableModifier;
.super Landroidx/compose/ui/platform/InspectorValueInfo;
.source "InspectableValue.kt"

# interfaces
.implements Landroidx/compose/ui/Modifier$Element;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/platform/InspectableModifier$End;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final end:Landroidx/compose/ui/platform/InspectableModifier$End;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/platform/InspectorInfo;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "inspectorInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/compose/ui/platform/InspectorValueInfo;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Landroidx/compose/ui/platform/InspectableModifier$End;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Landroidx/compose/ui/platform/InspectableModifier$End;-><init>(Landroidx/compose/ui/platform/InspectableModifier;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Landroidx/compose/ui/platform/InspectableModifier;->end:Landroidx/compose/ui/platform/InspectableModifier$End;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final getEnd()Landroidx/compose/ui/platform/InspectableModifier$End;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/InspectableModifier;->end:Landroidx/compose/ui/platform/InspectableModifier$End;

    .line 2
    .line 3
    return-object v0
.end method
