.class public Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;
.super Landroidx/databinding/BaseObservable;
.source "SelectableItem.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final CARD_BIG:I

.field private final CARD_SMALL:I

.field private final TYPE_COIN:I

.field private final TYPE_SUB:I

.field private clickable:Z

.field private dataType:I

.field private isSelected:Z
    .annotation runtime Llk/c;
    .end annotation
.end field

.field private itemStyle:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private sort:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/databinding/BaseObservable;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->TYPE_COIN:I

    .line 6
    .line 7
    iput v0, p0, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->CARD_SMALL:I

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    iput v1, p0, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->CARD_BIG:I

    .line 11
    .line 12
    iget v1, p0, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->TYPE_SUB:I

    .line 13
    .line 14
    iput v1, p0, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->dataType:I

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->clickable:Z

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final getCARD_BIG()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->CARD_BIG:I

    .line 2
    .line 3
    return v0
.end method

.method public final getCARD_SMALL()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->CARD_SMALL:I

    .line 2
    .line 3
    return v0
.end method

.method public final getClickable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->clickable:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getDataType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->dataType:I

    .line 2
    .line 3
    return v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public final getItemStyle()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->itemStyle:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSort()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->sort:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTYPE_COIN()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->TYPE_COIN:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTYPE_SUB()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->TYPE_SUB:I

    .line 2
    .line 3
    return v0
.end method

.method public final isBigCard()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->itemStyle:Ljava/lang/Integer;

    .line 2
    .line 3
    iget v1, p0, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->CARD_BIG:I

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 17
    :goto_1
    return v0
.end method

.method public final isSelected()Z
    .locals 1
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->isSelected:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isSmallCard()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->itemStyle:Ljava/lang/Integer;

    .line 2
    .line 3
    iget v1, p0, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->CARD_SMALL:I

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 17
    :goto_1
    return v0
.end method

.method public final setClickable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->clickable:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setDataType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->dataType:I

    .line 2
    .line 3
    return-void
.end method

.method public final setItemStyle(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->itemStyle:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setSelected(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->isSelected:Z

    .line 2
    .line 3
    const/4 p1, 0x6

    .line 4
    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final setSort(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->sort:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
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
    const-string v1, "SelectableItem(isSelected="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->isSelected:Z

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", clickable="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->clickable:Z

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x29

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method
