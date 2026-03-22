.class public final Landroidx/room/MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1$2;
.super Ljava/lang/Object;
.source "Emitters.kt"

# interfaces
.implements Lkt/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1;->collect(Lkt/c;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkt/c;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 MultiInstanceInvalidationClient.android.kt\nandroidx/room/MultiInstanceInvalidationClient\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,218:1\n57#2:219\n58#2:235\n134#3,2:220\n136#3:223\n137#3,4:225\n141#3:230\n142#3,2:232\n13472#4:222\n13473#4:231\n1869#5:224\n1870#5:229\n1#6:234\n*S KotlinDebug\n*F\n+ 1 MultiInstanceInvalidationClient.android.kt\nandroidx/room/MultiInstanceInvalidationClient\n*L\n135#1:222\n135#1:231\n136#1:224\n136#1:229\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $resolvedTableNames$inlined:[Ljava/lang/String;

.field final synthetic $this_unsafeFlow:Lkt/c;


# direct methods
.method public constructor <init>(Lkt/c;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1$2;->$this_unsafeFlow:Lkt/c;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/room/MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1$2;->$resolvedTableNames$inlined:[Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;
    .locals 10
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Landroidx/room/MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1$2$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Landroidx/room/MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1$2$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/room/MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1$2$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/room/MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1$2$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/room/MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1$2$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Landroidx/room/MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1$2$1;-><init>(Landroidx/room/MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1$2;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Landroidx/room/MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1$2$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Landroidx/room/MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1$2$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_3

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-object p2, p0, Landroidx/room/MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1$2;->$this_unsafeFlow:Lkt/c;

    .line 54
    .line 55
    check-cast p1, Ljava/util/Set;

    .line 56
    .line 57
    invoke-static {}, Lkotlin/collections/y0;->b()Ljava/util/Set;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    iget-object v4, p0, Landroidx/room/MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1$2;->$resolvedTableNames$inlined:[Ljava/lang/String;

    .line 62
    .line 63
    array-length v5, v4

    .line 64
    const/4 v6, 0x0

    .line 65
    :goto_1
    if-ge v6, v5, :cond_5

    .line 66
    .line 67
    aget-object v7, v4, v6

    .line 68
    .line 69
    move-object v8, p1

    .line 70
    check-cast v8, Ljava/lang/Iterable;

    .line 71
    .line 72
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v9

    .line 80
    if-eqz v9, :cond_4

    .line 81
    .line 82
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v9

    .line 86
    check-cast v9, Ljava/lang/String;

    .line 87
    .line 88
    invoke-static {v7, v9, v3}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    if-eqz v9, :cond_3

    .line 93
    .line 94
    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_5
    invoke-static {v2}, Lkotlin/collections/y0;->a(Ljava/util/Set;)Ljava/util/Set;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    check-cast p1, Ljava/util/Collection;

    .line 106
    .line 107
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-eqz v2, :cond_6

    .line 112
    .line 113
    const/4 p1, 0x0

    .line 114
    :cond_6
    if-eqz p1, :cond_7

    .line 115
    .line 116
    iput v3, v0, Landroidx/room/MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1$2$1;->label:I

    .line 117
    .line 118
    invoke-interface {p2, p1, v0}, Lkt/c;->emit(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    if-ne p1, v1, :cond_7

    .line 123
    .line 124
    return-object v1

    .line 125
    :cond_7
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 126
    .line 127
    return-object p1
.end method
