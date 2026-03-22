.class public final Landroidx/compose/runtime/changelist/Operations$OpIterator;
.super Ljava/lang/Object;
.source "Operations.kt"

# interfaces
.implements Landroidx/compose/runtime/changelist/OperationArgContainer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/changelist/Operations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OpIterator"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private intIdx:I

.field private objIdx:I

.field private opIdx:I

.field final synthetic this$0:Landroidx/compose/runtime/changelist/Operations;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/changelist/Operations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/runtime/changelist/Operations$OpIterator;->this$0:Landroidx/compose/runtime/changelist/Operations;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final currentOperationDebugString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/changelist/Operations$OpIterator;->this$0:Landroidx/compose/runtime/changelist/Operations;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "operation["

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget v2, p0, Landroidx/compose/runtime/changelist/Operations$OpIterator;->opIdx:I

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, "] = "

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, ""

    .line 24
    .line 25
    invoke-static {v0, p0, v2}, Landroidx/compose/runtime/changelist/Operations;->access$currentOpToDebugString(Landroidx/compose/runtime/changelist/Operations;Landroidx/compose/runtime/changelist/Operations$OpIterator;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "toString(...)"

    .line 37
    .line 38
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-object v0
.end method

.method public getInt(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/changelist/Operations$OpIterator;->this$0:Landroidx/compose/runtime/changelist/Operations;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/compose/runtime/changelist/Operations;->intArgs:[I

    .line 4
    .line 5
    iget v1, p0, Landroidx/compose/runtime/changelist/Operations$OpIterator;->intIdx:I

    .line 6
    .line 7
    add-int/2addr v1, p1

    .line 8
    aget p1, v0, v1

    .line 9
    .line 10
    return p1
.end method

.method public getObject-31yXWZQ(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/changelist/Operations$OpIterator;->this$0:Landroidx/compose/runtime/changelist/Operations;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/compose/runtime/changelist/Operations;->objectArgs:[Ljava/lang/Object;

    .line 4
    .line 5
    iget v1, p0, Landroidx/compose/runtime/changelist/Operations$OpIterator;->objIdx:I

    .line 6
    .line 7
    add-int/2addr v1, p1

    .line 8
    aget-object p1, v0, v1

    .line 9
    .line 10
    return-object p1
.end method

.method public final getOperation()Landroidx/compose/runtime/changelist/Operation;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/changelist/Operations$OpIterator;->this$0:Landroidx/compose/runtime/changelist/Operations;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/compose/runtime/changelist/Operations;->opCodes:[Landroidx/compose/runtime/changelist/Operation;

    .line 4
    .line 5
    iget v1, p0, Landroidx/compose/runtime/changelist/Operations$OpIterator;->opIdx:I

    .line 6
    .line 7
    aget-object v0, v0, v1

    .line 8
    .line 9
    return-object v0
.end method

.method public final next()Z
    .locals 4

    .line 1
    iget v0, p0, Landroidx/compose/runtime/changelist/Operations$OpIterator;->opIdx:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/runtime/changelist/Operations$OpIterator;->this$0:Landroidx/compose/runtime/changelist/Operations;

    .line 4
    .line 5
    iget v1, v1, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/changelist/Operations$OpIterator;->getOperation()Landroidx/compose/runtime/changelist/Operation;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget v1, p0, Landroidx/compose/runtime/changelist/Operations$OpIterator;->intIdx:I

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/Operation;->getInts()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    add-int/2addr v1, v3

    .line 22
    iput v1, p0, Landroidx/compose/runtime/changelist/Operations$OpIterator;->intIdx:I

    .line 23
    .line 24
    iget v1, p0, Landroidx/compose/runtime/changelist/Operations$OpIterator;->objIdx:I

    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/compose/runtime/changelist/Operation;->getObjects()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    add-int/2addr v1, v0

    .line 31
    iput v1, p0, Landroidx/compose/runtime/changelist/Operations$OpIterator;->objIdx:I

    .line 32
    .line 33
    iget v0, p0, Landroidx/compose/runtime/changelist/Operations$OpIterator;->opIdx:I

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    add-int/2addr v0, v1

    .line 37
    iput v0, p0, Landroidx/compose/runtime/changelist/Operations$OpIterator;->opIdx:I

    .line 38
    .line 39
    iget-object v3, p0, Landroidx/compose/runtime/changelist/Operations$OpIterator;->this$0:Landroidx/compose/runtime/changelist/Operations;

    .line 40
    .line 41
    iget v3, v3, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    .line 42
    .line 43
    if-ge v0, v3, :cond_1

    .line 44
    .line 45
    move v2, v1

    .line 46
    :cond_1
    return v2
.end method
