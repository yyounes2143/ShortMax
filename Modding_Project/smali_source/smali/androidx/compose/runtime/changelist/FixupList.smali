.class public final Landroidx/compose/runtime/changelist/FixupList;
.super Landroidx/compose/runtime/changelist/OperationsDebugStringFormattable;
.source "FixupList.kt"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFixupList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FixupList.kt\nandroidx/compose/runtime/changelist/FixupList\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 Operations.kt\nandroidx/compose/runtime/changelist/Operations\n+ 4 Operation.kt\nandroidx/compose/runtime/changelist/Operation$InsertNodeFixup\n+ 5 Operations.kt\nandroidx/compose/runtime/changelist/Operations$WriteScope\n+ 6 Operation.kt\nandroidx/compose/runtime/changelist/Operation$PostInsertNodeFixup\n+ 7 Operation.kt\nandroidx/compose/runtime/changelist/Operation$UpdateNode\n*L\n1#1,96:1\n4788#2,4:97\n4788#2,4:138\n204#3,2:101\n360#3:114\n357#3:115\n207#3,2:118\n204#3,2:120\n360#3:132\n357#3:133\n207#3,2:136\n204#3,2:142\n207#3,2:146\n701#4:103\n704#4:104\n707#4:117\n371#5,9:105\n380#5:116\n371#5,9:123\n380#5:134\n744#6:122\n747#6:135\n544#7:144\n547#7:145\n*S KotlinDebug\n*F\n+ 1 FixupList.kt\nandroidx/compose/runtime/changelist/FixupList\n*L\n50#1:97,4\n76#1:138,4\n63#1:101,2\n65#1:114\n65#1:115\n63#1:118,2\n69#1:120,2\n70#1:132\n70#1:133\n69#1:136,2\n83#1:142,2\n83#1:146,2\n64#1:103\n65#1:104\n66#1:117\n65#1:105,9\n65#1:116\n70#1:123,9\n70#1:134\n70#1:122\n71#1:135\n84#1:144\n85#1:145\n*E\n"
    }
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final operations:Landroidx/compose/runtime/changelist/Operations;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pendingOperations:Landroidx/compose/runtime/changelist/Operations;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/changelist/OperationsDebugStringFormattable;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/compose/runtime/changelist/Operations;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/compose/runtime/changelist/Operations;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/compose/runtime/changelist/FixupList;->operations:Landroidx/compose/runtime/changelist/Operations;

    .line 10
    .line 11
    new-instance v0, Landroidx/compose/runtime/changelist/Operations;

    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/compose/runtime/changelist/Operations;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/compose/runtime/changelist/FixupList;->pendingOperations:Landroidx/compose/runtime/changelist/Operations;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/changelist/FixupList;->pendingOperations:Landroidx/compose/runtime/changelist/Operations;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/Operations;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/runtime/changelist/FixupList;->operations:Landroidx/compose/runtime/changelist/Operations;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/Operations;->clear()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final createAndInsertNode(Lkotlin/jvm/functions/Function0;ILandroidx/compose/runtime/Anchor;)V
    .locals 8
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/Anchor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/lang/Object;",
            ">;I",
            "Landroidx/compose/runtime/Anchor;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/changelist/FixupList;->operations:Landroidx/compose/runtime/changelist/Operations;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/runtime/changelist/Operation$InsertNodeFixup;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$InsertNodeFixup;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/changelist/Operations;)Landroidx/compose/runtime/changelist/Operations;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-static {v3}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    invoke-static {v2, v4, p1}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, v2, Landroidx/compose/runtime/changelist/Operations;->intArgs:[I

    .line 21
    .line 22
    iget v4, v2, Landroidx/compose/runtime/changelist/Operations;->intArgsSize:I

    .line 23
    .line 24
    iget-object v5, v2, Landroidx/compose/runtime/changelist/Operations;->opCodes:[Landroidx/compose/runtime/changelist/Operation;

    .line 25
    .line 26
    iget v6, v2, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    .line 27
    .line 28
    const/4 v7, 0x1

    .line 29
    sub-int/2addr v6, v7

    .line 30
    aget-object v5, v5, v6

    .line 31
    .line 32
    invoke-virtual {v5}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    sub-int/2addr v4, v5

    .line 37
    aput p2, p1, v4

    .line 38
    .line 39
    invoke-static {v7}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-static {v2, p1, p3}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/changelist/Operations;->ensureAllArgumentsPushedFor(Landroidx/compose/runtime/changelist/Operation;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Landroidx/compose/runtime/changelist/FixupList;->pendingOperations:Landroidx/compose/runtime/changelist/Operations;

    .line 50
    .line 51
    sget-object v0, Landroidx/compose/runtime/changelist/Operation$PostInsertNodeFixup;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$PostInsertNodeFixup;

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    .line 54
    .line 55
    .line 56
    invoke-static {p1}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/changelist/Operations;)Landroidx/compose/runtime/changelist/Operations;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    iget-object v2, v1, Landroidx/compose/runtime/changelist/Operations;->intArgs:[I

    .line 61
    .line 62
    iget v4, v1, Landroidx/compose/runtime/changelist/Operations;->intArgsSize:I

    .line 63
    .line 64
    iget-object v5, v1, Landroidx/compose/runtime/changelist/Operations;->opCodes:[Landroidx/compose/runtime/changelist/Operation;

    .line 65
    .line 66
    iget v6, v1, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    .line 67
    .line 68
    sub-int/2addr v6, v7

    .line 69
    aget-object v5, v5, v6

    .line 70
    .line 71
    invoke-virtual {v5}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    sub-int/2addr v4, v5

    .line 76
    aput p2, v2, v4

    .line 77
    .line 78
    invoke-static {v3}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    invoke-static {v1, p2, p3}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/changelist/Operations;->ensureAllArgumentsPushedFor(Landroidx/compose/runtime/changelist/Operation;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public final endNodeInsert()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/changelist/FixupList;->pendingOperations:Landroidx/compose/runtime/changelist/Operations;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/Operations;->isNotEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "Cannot end node insertion, there are no pending operations that can be realized."

    .line 10
    .line 11
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/changelist/FixupList;->pendingOperations:Landroidx/compose/runtime/changelist/Operations;

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/compose/runtime/changelist/FixupList;->operations:Landroidx/compose/runtime/changelist/Operations;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/changelist/Operations;->popInto(Landroidx/compose/runtime/changelist/Operations;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final executeAndFlushAllPendingFixups(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/RememberManager;Landroidx/compose/runtime/changelist/OperationErrorContext;)V
    .locals 1
    .param p1    # Landroidx/compose/runtime/Applier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/SlotWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/RememberManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/changelist/OperationErrorContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/Applier<",
            "*>;",
            "Landroidx/compose/runtime/SlotWriter;",
            "Landroidx/compose/runtime/RememberManager;",
            "Landroidx/compose/runtime/changelist/OperationErrorContext;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/changelist/FixupList;->pendingOperations:Landroidx/compose/runtime/changelist/Operations;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/Operations;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "FixupList has pending fixup operations that were not realized. Were there mismatched insertNode() and endNodeInsert() calls?"

    .line 10
    .line 11
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/changelist/FixupList;->operations:Landroidx/compose/runtime/changelist/Operations;

    .line 15
    .line 16
    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/compose/runtime/changelist/Operations;->executeAndFlushAllPendingOperations(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/RememberManager;Landroidx/compose/runtime/changelist/OperationErrorContext;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final getSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/changelist/FixupList;->operations:Landroidx/compose/runtime/changelist/Operations;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/Operations;->getSize()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/changelist/FixupList;->operations:Landroidx/compose/runtime/changelist/Operations;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/Operations;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final isNotEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/changelist/FixupList;->operations:Landroidx/compose/runtime/changelist/Operations;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/Operations;->isNotEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public toDebugString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "FixupList instance containing "

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/compose/runtime/changelist/FixupList;->getSize()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, " operations"

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-lez v1, :cond_0

    .line 40
    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v2, ":\n"

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Landroidx/compose/runtime/changelist/FixupList;->operations:Landroidx/compose/runtime/changelist/Operations;

    .line 52
    .line 53
    invoke-virtual {v2, p1}, Landroidx/compose/runtime/changelist/Operations;->toDebugString(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const-string v0, "toString(...)"

    .line 72
    .line 73
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-object p1
.end method

.method public final updateNode(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 4
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(TV;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-TV;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/changelist/FixupList;->operations:Landroidx/compose/runtime/changelist/Operations;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/runtime/changelist/Operation$UpdateNode;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$UpdateNode;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->constructor-impl(Landroidx/compose/runtime/changelist/Operations;)Landroidx/compose/runtime/changelist/Operations;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-static {v3}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-static {v2, v3, p1}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    invoke-static {p1}, Landroidx/compose/runtime/changelist/Operation$ObjectParameter;->constructor-impl(I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const-string v3, "null cannot be cast to non-null type @[ExtensionFunctionType] kotlin.Function2<kotlin.Any?, kotlin.Any?, kotlin.Unit>"

    .line 26
    .line 27
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 v3, 0x2

    .line 31
    invoke-static {p2, v3}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    check-cast p2, Lkotlin/jvm/functions/Function2;

    .line 36
    .line 37
    invoke-static {v2, p1, p2}, Landroidx/compose/runtime/changelist/Operations$WriteScope;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/changelist/Operations;->ensureAllArgumentsPushedFor(Landroidx/compose/runtime/changelist/Operation;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
