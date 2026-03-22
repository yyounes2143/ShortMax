.class public final Landroidx/compose/ui/text/input/BackspaceCommand;
.super Ljava/lang/Object;
.source "EditCommand.kt"

# interfaces
.implements Landroidx/compose/ui/text/input/EditCommand;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public applyTo(Landroidx/compose/ui/text/input/EditingBuffer;)V
    .locals 3
    .param p1    # Landroidx/compose/ui/text/input/EditingBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "buffer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->hasComposition$ui_text_release()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->getCompositionStart$ui_text_release()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->getCompositionEnd$ui_text_release()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/text/input/EditingBuffer;->delete$ui_text_release(II)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->getCursor$ui_text_release()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v1, -0x1

    .line 29
    if-ne v0, v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->getSelectionStart$ui_text_release()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->getSelectionEnd$ui_text_release()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->getSelectionStart$ui_text_release()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-virtual {p1, v2}, Landroidx/compose/ui/text/input/EditingBuffer;->setCursor$ui_text_release(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/text/input/EditingBuffer;->delete$ui_text_release(II)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->getCursor$ui_text_release()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->getCursor$ui_text_release()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-static {v0, v1}, Landroidx/compose/ui/text/JvmCharHelpers_androidKt;->findPrecedingBreak(Ljava/lang/String;I)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    invoke-virtual {p1}, Landroidx/compose/ui/text/input/EditingBuffer;->getCursor$ui_text_release()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    invoke-virtual {p1, v0, v1}, Landroidx/compose/ui/text/input/EditingBuffer;->delete$ui_text_release(II)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of p1, p1, Landroidx/compose/ui/text/input/BackspaceCommand;

    .line 2
    .line 3
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    const-class v0, Landroidx/compose/ui/text/input/BackspaceCommand;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "BackspaceCommand()"

    .line 2
    .line 3
    return-object v0
.end method
