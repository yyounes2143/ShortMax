.class final Landroidx/room/RoomDatabase$performClear$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RoomDatabase.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/RoomDatabase$performClear$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/room/TransactionScope<",
        "Lkotlin/Unit;",
        ">;",
        "Lrs/c<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "androidx.room.RoomDatabase$performClear$1$1$1"
    f = "RoomDatabase.android.kt"
    l = {
        0x219,
        0x21b
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRoomDatabase.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RoomDatabase.android.kt\nandroidx/room/RoomDatabase$performClear$1$1$1\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,2191:1\n13472#2,2:2192\n*S KotlinDebug\n*F\n+ 1 RoomDatabase.android.kt\nandroidx/room/RoomDatabase$performClear$1$1$1\n*L\n539#1:2192,2\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $hasForeignKeys:Z

.field final synthetic $tableNames:[Ljava/lang/String;

.field I$0:I

.field I$1:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Z[Ljava/lang/String;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Landroidx/room/RoomDatabase$performClear$1$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Landroidx/room/RoomDatabase$performClear$1$1$1;->$hasForeignKeys:Z

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/room/RoomDatabase$performClear$1$1$1;->$tableNames:[Ljava/lang/String;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/room/RoomDatabase$performClear$1$1$1;

    .line 2
    .line 3
    iget-boolean v1, p0, Landroidx/room/RoomDatabase$performClear$1$1$1;->$hasForeignKeys:Z

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/room/RoomDatabase$performClear$1$1$1;->$tableNames:[Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Landroidx/room/RoomDatabase$performClear$1$1$1;-><init>(Z[Ljava/lang/String;Lrs/c;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Landroidx/room/RoomDatabase$performClear$1$1$1;->L$0:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public final invoke(Landroidx/room/TransactionScope;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/TransactionScope<",
            "Lkotlin/Unit;",
            ">;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/room/RoomDatabase$performClear$1$1$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Landroidx/room/RoomDatabase$performClear$1$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/room/RoomDatabase$performClear$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Landroidx/room/TransactionScope;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Landroidx/room/RoomDatabase$performClear$1$1$1;->invoke(Landroidx/room/TransactionScope;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Landroidx/room/RoomDatabase$performClear$1$1$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    iget v1, p0, Landroidx/room/RoomDatabase$performClear$1$1$1;->I$1:I

    .line 16
    .line 17
    iget v4, p0, Landroidx/room/RoomDatabase$performClear$1$1$1;->I$0:I

    .line 18
    .line 19
    iget-object v5, p0, Landroidx/room/RoomDatabase$performClear$1$1$1;->L$1:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v5, [Ljava/lang/String;

    .line 22
    .line 23
    iget-object v6, p0, Landroidx/room/RoomDatabase$performClear$1$1$1;->L$0:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v6, Landroidx/room/TransactionScope;

    .line 26
    .line 27
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 34
    .line 35
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1

    .line 39
    :cond_1
    iget-object v1, p0, Landroidx/room/RoomDatabase$performClear$1$1$1;->L$0:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v1, Landroidx/room/TransactionScope;

    .line 42
    .line 43
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Landroidx/room/RoomDatabase$performClear$1$1$1;->L$0:Ljava/lang/Object;

    .line 51
    .line 52
    move-object v1, p1

    .line 53
    check-cast v1, Landroidx/room/TransactionScope;

    .line 54
    .line 55
    iget-boolean p1, p0, Landroidx/room/RoomDatabase$performClear$1$1$1;->$hasForeignKeys:Z

    .line 56
    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    iput-object v1, p0, Landroidx/room/RoomDatabase$performClear$1$1$1;->L$0:Ljava/lang/Object;

    .line 60
    .line 61
    iput v3, p0, Landroidx/room/RoomDatabase$performClear$1$1$1;->label:I

    .line 62
    .line 63
    const-string p1, "PRAGMA defer_foreign_keys = TRUE"

    .line 64
    .line 65
    invoke-static {v1, p1, p0}, Landroidx/room/TransactorKt;->execSQL(Landroidx/room/PooledConnection;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-ne p1, v0, :cond_3

    .line 70
    .line 71
    return-object v0

    .line 72
    :cond_3
    :goto_0
    iget-object p1, p0, Landroidx/room/RoomDatabase$performClear$1$1$1;->$tableNames:[Ljava/lang/String;

    .line 73
    .line 74
    array-length v4, p1

    .line 75
    const/4 v5, 0x0

    .line 76
    move-object v6, v1

    .line 77
    move v1, v4

    .line 78
    move v4, v5

    .line 79
    move-object v5, p1

    .line 80
    :goto_1
    if-ge v4, v1, :cond_5

    .line 81
    .line 82
    aget-object p1, v5, v4

    .line 83
    .line 84
    new-instance v7, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v8, "DELETE FROM `"

    .line 90
    .line 91
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const/16 p1, 0x60

    .line 98
    .line 99
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    iput-object v6, p0, Landroidx/room/RoomDatabase$performClear$1$1$1;->L$0:Ljava/lang/Object;

    .line 107
    .line 108
    iput-object v5, p0, Landroidx/room/RoomDatabase$performClear$1$1$1;->L$1:Ljava/lang/Object;

    .line 109
    .line 110
    iput v4, p0, Landroidx/room/RoomDatabase$performClear$1$1$1;->I$0:I

    .line 111
    .line 112
    iput v1, p0, Landroidx/room/RoomDatabase$performClear$1$1$1;->I$1:I

    .line 113
    .line 114
    iput v2, p0, Landroidx/room/RoomDatabase$performClear$1$1$1;->label:I

    .line 115
    .line 116
    invoke-static {v6, p1, p0}, Landroidx/room/TransactorKt;->execSQL(Landroidx/room/PooledConnection;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    if-ne p1, v0, :cond_4

    .line 121
    .line 122
    return-object v0

    .line 123
    :cond_4
    :goto_2
    add-int/2addr v4, v3

    .line 124
    goto :goto_1

    .line 125
    :cond_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 126
    .line 127
    return-object p1
.end method
