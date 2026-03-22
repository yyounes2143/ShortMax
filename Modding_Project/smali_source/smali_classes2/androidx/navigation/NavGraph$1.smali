.class Landroidx/navigation/NavGraph$1;
.super Ljava/lang/Object;
.source "NavGraph.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/navigation/NavGraph;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Landroidx/navigation/NavDestination;",
        ">;"
    }
.end annotation


# instance fields
.field private mIndex:I

.field private mWentToNext:Z

.field final synthetic this$0:Landroidx/navigation/NavGraph;


# direct methods
.method constructor <init>(Landroidx/navigation/NavGraph;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/navigation/NavGraph$1;->this$0:Landroidx/navigation/NavGraph;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Landroidx/navigation/NavGraph$1;->mIndex:I

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Landroidx/navigation/NavGraph$1;->mWentToNext:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .line 1
    iget v0, p0, Landroidx/navigation/NavGraph$1;->mIndex:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iget-object v2, p0, Landroidx/navigation/NavGraph$1;->this$0:Landroidx/navigation/NavGraph;

    .line 6
    .line 7
    iget-object v2, v2, Landroidx/navigation/NavGraph;->mNodes:Landroidx/collection/SparseArrayCompat;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroidx/collection/SparseArrayCompat;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ge v0, v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    :goto_0
    return v1
.end method

.method public next()Landroidx/navigation/NavDestination;
    .locals 3

    .line 2
    invoke-virtual {p0}, Landroidx/navigation/NavGraph$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/navigation/NavGraph$1;->mWentToNext:Z

    .line 4
    iget-object v1, p0, Landroidx/navigation/NavGraph$1;->this$0:Landroidx/navigation/NavGraph;

    iget-object v1, v1, Landroidx/navigation/NavGraph;->mNodes:Landroidx/collection/SparseArrayCompat;

    iget v2, p0, Landroidx/navigation/NavGraph$1;->mIndex:I

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/navigation/NavGraph$1;->mIndex:I

    invoke-virtual {v1, v2}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavDestination;

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/navigation/NavGraph$1;->next()Landroidx/navigation/NavDestination;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/navigation/NavGraph$1;->mWentToNext:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/navigation/NavGraph$1;->this$0:Landroidx/navigation/NavGraph;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/navigation/NavGraph;->mNodes:Landroidx/collection/SparseArrayCompat;

    .line 8
    .line 9
    iget v1, p0, Landroidx/navigation/NavGraph$1;->mIndex:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroidx/navigation/NavDestination;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Landroidx/navigation/NavDestination;->setParent(Landroidx/navigation/NavGraph;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Landroidx/navigation/NavGraph$1;->this$0:Landroidx/navigation/NavGraph;

    .line 22
    .line 23
    iget-object v0, v0, Landroidx/navigation/NavGraph;->mNodes:Landroidx/collection/SparseArrayCompat;

    .line 24
    .line 25
    iget v1, p0, Landroidx/navigation/NavGraph$1;->mIndex:I

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroidx/collection/SparseArrayCompat;->removeAt(I)V

    .line 28
    .line 29
    .line 30
    iget v0, p0, Landroidx/navigation/NavGraph$1;->mIndex:I

    .line 31
    .line 32
    add-int/lit8 v0, v0, -0x1

    .line 33
    .line 34
    iput v0, p0, Landroidx/navigation/NavGraph$1;->mIndex:I

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Landroidx/navigation/NavGraph$1;->mWentToNext:Z

    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    const-string v1, "You must call next() before you can remove an element"

    .line 43
    .line 44
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0
.end method
