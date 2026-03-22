.class public final Landroidx/compose/runtime/MovableContentState;
.super Ljava/lang/Object;
.source "Composer.kt"


# annotations
.annotation build Landroidx/compose/runtime/InternalComposeApi;
.end annotation

.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nComposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Composer.kt\nandroidx/compose/runtime/MovableContentState\n+ 2 Extensions.kt\nandroidx/compose/runtime/collection/ExtensionsKt\n+ 3 ObjectList.kt\nandroidx/collection/ObjectList\n+ 4 ObjectList.kt\nandroidx/collection/MutableObjectList\n+ 5 SlotTable.kt\nandroidx/compose/runtime/SlotTable\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 7 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,5012:1\n29#2,8:5013\n37#2:5027\n287#3,6:5021\n287#3,6:5034\n919#4,2:5028\n175#5,4:5030\n180#5,3:5041\n1#6:5040\n4788#7,4:5044\n*S KotlinDebug\n*F\n+ 1 Composer.kt\nandroidx/compose/runtime/MovableContentState\n*L\n423#1:5013,8\n423#1:5027\n423#1:5021,6\n446#1:5034,6\n423#1:5028,2\n427#1:5030,4\n427#1:5041,3\n427#1:5040\n443#1:5044,4\n*E\n"
    }
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final slotTable:Landroidx/compose/runtime/SlotTable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/SlotTable;)V
    .locals 0
    .param p1    # Landroidx/compose/runtime/SlotTable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/MovableContentState;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Landroidx/compose/runtime/MovableContentState;Landroidx/compose/runtime/MovableContentStateReference;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/MovableContentState;->extractNestedStates$lambda$1(Landroidx/compose/runtime/MovableContentState;Landroidx/compose/runtime/MovableContentStateReference;)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final extractNestedStates$lambda$1(Landroidx/compose/runtime/MovableContentState;Landroidx/compose/runtime/MovableContentStateReference;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/runtime/MovableContentState;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/runtime/MovableContentStateReference;->getAnchor$runtime()Landroidx/compose/runtime/Anchor;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotTable;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method private static final extractNestedStates$lambda$4$closeToGroupContaining(Landroidx/compose/runtime/SlotWriter;I)V
    .locals 1

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getParent()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroupEnd()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-gt v0, p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->skipToGroupEnd()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->endGroup()I

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    return-void
.end method

.method private static final extractNestedStates$lambda$4$openParent(Landroidx/compose/runtime/SlotWriter;I)V
    .locals 1

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/runtime/MovableContentState;->extractNestedStates$lambda$4$closeToGroupContaining(Landroidx/compose/runtime/SlotWriter;I)V

    .line 2
    .line 3
    .line 4
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eq v0, p1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->isGroupEnd()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->access$getNextGroup(Landroidx/compose/runtime/SlotWriter;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-ge p1, v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->startGroup()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->skipGroup()I

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-ne v0, p1, :cond_2

    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    const/4 p1, 0x0

    .line 39
    :goto_1
    if-nez p1, :cond_3

    .line 40
    .line 41
    const-string p1, "Unexpected slot table structure"

    .line 42
    .line 43
    invoke-static {p1}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->startGroup()V

    .line 47
    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final extractNestedStates$runtime(Landroidx/compose/runtime/Applier;Landroidx/collection/ObjectList;)Landroidx/collection/ScatterMap;
    .locals 9
    .param p1    # Landroidx/compose/runtime/Applier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/collection/ObjectList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/Applier<",
            "*>;",
            "Landroidx/collection/ObjectList<",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            ">;)",
            "Landroidx/collection/ScatterMap<",
            "Landroidx/compose/runtime/MovableContentStateReference;",
            "Landroidx/compose/runtime/MovableContentState;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p2, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 3
    .line 4
    iget v2, p2, Landroidx/collection/ObjectList;->_size:I

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    move v4, v3

    .line 8
    :goto_0
    if-ge v4, v2, :cond_3

    .line 9
    .line 10
    aget-object v5, v1, v4

    .line 11
    .line 12
    check-cast v5, Landroidx/compose/runtime/MovableContentStateReference;

    .line 13
    .line 14
    iget-object v6, p0, Landroidx/compose/runtime/MovableContentState;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 15
    .line 16
    invoke-virtual {v5}, Landroidx/compose/runtime/MovableContentStateReference;->getAnchor$runtime()Landroidx/compose/runtime/Anchor;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    invoke-virtual {v6, v5}, Landroidx/compose/runtime/SlotTable;->ownsAnchor(Landroidx/compose/runtime/Anchor;)Z

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-nez v5, :cond_2

    .line 25
    .line 26
    new-instance v1, Landroidx/collection/MutableObjectList;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-direct {v1, v3, v0, v2}, Landroidx/collection/MutableObjectList;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 30
    .line 31
    .line 32
    iget-object v2, p2, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 33
    .line 34
    iget p2, p2, Landroidx/collection/ObjectList;->_size:I

    .line 35
    .line 36
    move v4, v3

    .line 37
    :goto_1
    if-ge v4, p2, :cond_1

    .line 38
    .line 39
    aget-object v5, v2, v4

    .line 40
    .line 41
    move-object v6, v5

    .line 42
    check-cast v6, Landroidx/compose/runtime/MovableContentStateReference;

    .line 43
    .line 44
    iget-object v7, p0, Landroidx/compose/runtime/MovableContentState;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 45
    .line 46
    invoke-virtual {v6}, Landroidx/compose/runtime/MovableContentStateReference;->getAnchor$runtime()Landroidx/compose/runtime/Anchor;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-virtual {v7, v6}, Landroidx/compose/runtime/SlotTable;->ownsAnchor(Landroidx/compose/runtime/Anchor;)Z

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    if-eqz v6, :cond_0

    .line 55
    .line 56
    invoke-virtual {v1, v5}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    :cond_0
    add-int/2addr v4, v0

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    move-object p2, v1

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    add-int/2addr v4, v0

    .line 64
    goto :goto_0

    .line 65
    :cond_3
    :goto_2
    new-instance v1, Landroidx/compose/runtime/p;

    .line 66
    .line 67
    invoke-direct {v1, p0}, Landroidx/compose/runtime/p;-><init>(Landroidx/compose/runtime/MovableContentState;)V

    .line 68
    .line 69
    .line 70
    invoke-static {p2, v1}, Landroidx/compose/runtime/collection/ExtensionsKt;->sortedBy(Landroidx/collection/ObjectList;Lkotlin/jvm/functions/Function1;)Landroidx/collection/ObjectList;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-virtual {p2}, Landroidx/collection/ObjectList;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_4

    .line 79
    .line 80
    invoke-static {}, Landroidx/collection/ScatterMapKt;->emptyScatterMap()Landroidx/collection/ScatterMap;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    return-object p1

    .line 85
    :cond_4
    invoke-static {}, Landroidx/collection/ScatterMapKt;->mutableScatterMapOf()Landroidx/collection/MutableScatterMap;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    iget-object v2, p0, Landroidx/compose/runtime/MovableContentState;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 90
    .line 91
    invoke-virtual {v2}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    :try_start_0
    iget-object v4, p2, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 96
    .line 97
    iget p2, p2, Landroidx/collection/ObjectList;->_size:I

    .line 98
    .line 99
    move v5, v3

    .line 100
    :goto_3
    if-ge v5, p2, :cond_5

    .line 101
    .line 102
    aget-object v6, v4, v5

    .line 103
    .line 104
    check-cast v6, Landroidx/compose/runtime/MovableContentStateReference;

    .line 105
    .line 106
    invoke-virtual {v6}, Landroidx/compose/runtime/MovableContentStateReference;->getAnchor$runtime()Landroidx/compose/runtime/Anchor;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/SlotWriter;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/SlotWriter;->parent(I)I

    .line 115
    .line 116
    .line 117
    move-result v8

    .line 118
    invoke-static {v2, v8}, Landroidx/compose/runtime/MovableContentState;->extractNestedStates$lambda$4$closeToGroupContaining(Landroidx/compose/runtime/SlotWriter;I)V

    .line 119
    .line 120
    .line 121
    invoke-static {v2, v8}, Landroidx/compose/runtime/MovableContentState;->extractNestedStates$lambda$4$openParent(Landroidx/compose/runtime/SlotWriter;I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2}, Landroidx/compose/runtime/SlotWriter;->getCurrentGroup()I

    .line 125
    .line 126
    .line 127
    move-result v8

    .line 128
    sub-int/2addr v7, v8

    .line 129
    invoke-virtual {v2, v7}, Landroidx/compose/runtime/SlotWriter;->advanceBy(I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v6}, Landroidx/compose/runtime/MovableContentStateReference;->getComposition$runtime()Landroidx/compose/runtime/ControlledComposition;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    invoke-static {v7, v6, v2, p1}, Landroidx/compose/runtime/ComposerKt;->extractMovableContentAtCurrent(Landroidx/compose/runtime/ControlledComposition;Landroidx/compose/runtime/MovableContentStateReference;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/Applier;)Landroidx/compose/runtime/MovableContentState;

    .line 137
    .line 138
    .line 139
    move-result-object v7

    .line 140
    invoke-virtual {v1, v6, v7}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    add-int/2addr v5, v0

    .line 144
    goto :goto_3

    .line 145
    :catchall_0
    move-exception p1

    .line 146
    goto :goto_4

    .line 147
    :cond_5
    const p1, 0x7fffffff

    .line 148
    .line 149
    .line 150
    invoke-static {v2, p1}, Landroidx/compose/runtime/MovableContentState;->extractNestedStates$lambda$4$closeToGroupContaining(Landroidx/compose/runtime/SlotWriter;I)V

    .line 151
    .line 152
    .line 153
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    .line 155
    invoke-virtual {v2, v0}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    .line 156
    .line 157
    .line 158
    return-object v1

    .line 159
    :goto_4
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    .line 160
    .line 161
    .line 162
    throw p1
.end method

.method public final getSlotTable$runtime()Landroidx/compose/runtime/SlotTable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/MovableContentState;->slotTable:Landroidx/compose/runtime/SlotTable;

    .line 2
    .line 3
    return-object v0
.end method
