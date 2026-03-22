.class public final Landroidx/collection/MutableKeys$iterator$1;
.super Ljava/lang/Object;
.source "ScatterMap.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMutableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/collection/MutableKeys;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TK;>;",
        "Lkotlin/jvm/internal/markers/KMutableIterator;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private current:I

.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/collection/MutableKeys;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableKeys<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/collection/MutableKeys;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableKeys<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/collection/MutableKeys$iterator$1;->this$0:Landroidx/collection/MutableKeys;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/collection/MutableKeys$iterator$1$iterator$1;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p1, v1}, Landroidx/collection/MutableKeys$iterator$1$iterator$1;-><init>(Landroidx/collection/MutableKeys;Lrs/c;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/sequences/j;->a(Lkotlin/jvm/functions/Function2;)Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Landroidx/collection/MutableKeys$iterator$1;->iterator:Ljava/util/Iterator;

    .line 17
    .line 18
    const/4 p1, -0x1

    .line 19
    iput p1, p0, Landroidx/collection/MutableKeys$iterator$1;->current:I

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final getCurrent()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/collection/MutableKeys$iterator$1;->current:I

    .line 2
    .line 3
    return v0
.end method

.method public final getIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/collection/MutableKeys$iterator$1;->iterator:Ljava/util/Iterator;

    .line 2
    .line 3
    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/collection/MutableKeys$iterator$1;->iterator:Ljava/util/Iterator;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/collection/MutableKeys$iterator$1;->iterator:Ljava/util/Iterator;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput v0, p0, Landroidx/collection/MutableKeys$iterator$1;->current:I

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/collection/MutableKeys$iterator$1;->this$0:Landroidx/collection/MutableKeys;

    .line 16
    .line 17
    invoke-static {v0}, Landroidx/collection/MutableKeys;->access$getParent$p(Landroidx/collection/MutableKeys;)Landroidx/collection/MutableScatterMap;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v0, v0, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    .line 22
    .line 23
    iget v1, p0, Landroidx/collection/MutableKeys$iterator$1;->current:I

    .line 24
    .line 25
    aget-object v0, v0, v1

    .line 26
    .line 27
    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/collection/MutableKeys$iterator$1;->current:I

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/collection/MutableKeys$iterator$1;->this$0:Landroidx/collection/MutableKeys;

    .line 6
    .line 7
    invoke-static {v0}, Landroidx/collection/MutableKeys;->access$getParent$p(Landroidx/collection/MutableKeys;)Landroidx/collection/MutableScatterMap;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v1, p0, Landroidx/collection/MutableKeys$iterator$1;->current:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroidx/collection/MutableScatterMap;->removeValueAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    const/4 v0, -0x1

    .line 17
    iput v0, p0, Landroidx/collection/MutableKeys$iterator$1;->current:I

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final setCurrent(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/collection/MutableKeys$iterator$1;->current:I

    .line 2
    .line 3
    return-void
.end method
