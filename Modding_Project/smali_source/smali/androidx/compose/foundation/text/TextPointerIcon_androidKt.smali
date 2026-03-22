.class public final Landroidx/compose/foundation/text/TextPointerIcon_androidKt;
.super Ljava/lang/Object;
.source "TextPointerIcon.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final textPointerIcon:Landroidx/compose/ui/input/pointer/PointerIcon;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x3f0

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/input/pointer/PointerIcon_androidKt;->PointerIcon(I)Landroidx/compose/ui/input/pointer/PointerIcon;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/compose/foundation/text/TextPointerIcon_androidKt;->textPointerIcon:Landroidx/compose/ui/input/pointer/PointerIcon;

    .line 8
    .line 9
    return-void
.end method

.method public static final getTextPointerIcon()Landroidx/compose/ui/input/pointer/PointerIcon;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/foundation/text/TextPointerIcon_androidKt;->textPointerIcon:Landroidx/compose/ui/input/pointer/PointerIcon;

    .line 2
    .line 3
    return-object v0
.end method
