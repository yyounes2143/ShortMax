.class public final Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedback;
.super Ljava/lang/Object;
.source "PlatformHapticFeedback.android.kt"

# interfaces
.implements Landroidx/compose/ui/hapticfeedback/HapticFeedback;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final view:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

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
    iput-object p1, p0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedback;->view:Landroid/view/View;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public performHapticFeedback-CdsT49E(I)V
    .locals 2

    .line 1
    sget-object v0, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->Companion:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;->getLongPress-5zf0vsI()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {p1, v1}, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->equals-impl0(II)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedback;->view:Landroid/view/View;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;->getTextHandleMove-5zf0vsI()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-static {p1, v0}, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->equals-impl0(II)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedback;->view:Landroid/view/View;

    .line 31
    .line 32
    const/16 v0, 0x9

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    return-void
.end method
