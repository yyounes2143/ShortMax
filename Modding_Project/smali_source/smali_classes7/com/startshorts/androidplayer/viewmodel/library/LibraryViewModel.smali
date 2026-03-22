.class public final Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;
.super Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;
.source "LibraryViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLibraryViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LibraryViewModel.kt\ncom/startshorts/androidplayer/viewmodel/library/LibraryViewModel\n+ 2 LongSparseArray.kt\nandroidx/core/util/LongSparseArrayKt\n*L\n1#1,162:1\n77#2,4:163\n77#2,4:167\n*S KotlinDebug\n*F\n+ 1 LibraryViewModel.kt\ncom/startshorts/androidplayer/viewmodel/library/LibraryViewModel\n*L\n117#1:163,4\n136#1:167,4\n*E\n"
    }
.end annotation


# instance fields
.field private final e:Lfk/x;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/library/b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final g:Lcom/startshorts/androidplayer/bean/library/LoadLibrary;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lfk/x;

    .line 5
    .line 6
    const/16 v1, 0x14

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lfk/x;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->e:Lfk/x;

    .line 12
    .line 13
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 14
    .line 15
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 19
    .line 20
    new-instance v0, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;

    .line 21
    .line 22
    const/4 v5, 0x7

    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v4, 0x0

    .line 27
    move-object v1, v0

    .line 28
    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;-><init>(Lcom/startshorts/androidplayer/bean/library/LibraryClass;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->g:Lcom/startshorts/androidplayer/bean/library/LoadLibrary;

    .line 32
    .line 33
    return-void
.end method

.method public static synthetic A(Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->L(Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic B(Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;ILjava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->O(Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;ILjava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C(Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->M(Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic D(Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->I(Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final I(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljk/z;->a(Ljava/lang/Throwable;)Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->x(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->e:Lfk/x;

    .line 9
    .line 10
    invoke-virtual {p1}, Lfk/x;->f()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private final K()V
    .locals 15

    .line 1
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryLabelAndPage$1;

    .line 2
    .line 3
    const/4 v7, 0x0

    .line 4
    invoke-direct {v3, p0, v7}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryLabelAndPage$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;Lrs/c;)V

    .line 5
    .line 6
    .line 7
    new-instance v4, Lwk/a;

    .line 8
    .line 9
    invoke-direct {v4, p0}, Lwk/a;-><init>(Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;)V

    .line 10
    .line 11
    .line 12
    const/4 v5, 0x2

    .line 13
    const/4 v6, 0x0

    .line 14
    const-string v1, "queryLibraryLabel"

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    move-object v0, p0

    .line 18
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->j(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 19
    .line 20
    .line 21
    new-instance v11, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryLabelAndPage$3;

    .line 22
    .line 23
    invoke-direct {v11, p0, v7}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryLabelAndPage$3;-><init>(Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;Lrs/c;)V

    .line 24
    .line 25
    .line 26
    new-instance v12, Lwk/b;

    .line 27
    .line 28
    invoke-direct {v12, p0}, Lwk/b;-><init>(Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;)V

    .line 29
    .line 30
    .line 31
    const/4 v13, 0x2

    .line 32
    const/4 v14, 0x0

    .line 33
    const-string v9, "queryLibrary"

    .line 34
    .line 35
    const/4 v10, 0x0

    .line 36
    move-object v8, p0

    .line 37
    invoke-static/range {v8 .. v14}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->j(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private static final L(Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Throwable;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->I(Ljava/lang/Throwable;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method private static final M(Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Throwable;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->I(Ljava/lang/Throwable;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method private final N(IJJLandroid/util/LongSparseArray;II)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Landroid/util/LongSparseArray<",
            "Lcom/startshorts/androidplayer/bean/library/LibraryCategory;",
            ">;II)V"
        }
    .end annotation

    .line 1
    move-object/from16 v6, p6

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-wide/from16 v1, p2

    .line 5
    .line 6
    move-wide/from16 v3, p4

    .line 7
    .line 8
    move-object/from16 v5, p6

    .line 9
    .line 10
    invoke-virtual/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->E(JJLandroid/util/LongSparseArray;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v12

    .line 14
    new-instance v5, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual/range {p6 .. p6}, Landroid/util/LongSparseArray;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x0

    .line 24
    :goto_0
    if-ge v1, v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v6, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    invoke-virtual {v6, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;

    .line 35
    .line 36
    const-wide/16 v7, 0x0

    .line 37
    .line 38
    cmp-long v2, v2, v7

    .line 39
    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getId()J

    .line 43
    .line 44
    .line 45
    move-result-wide v2

    .line 46
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    new-instance v13, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryNextPage$2;

    .line 57
    .line 58
    const/4 v11, 0x0

    .line 59
    move-object v0, v13

    .line 60
    move-wide/from16 v1, p2

    .line 61
    .line 62
    move-wide/from16 v3, p4

    .line 63
    .line 64
    move/from16 v6, p7

    .line 65
    .line 66
    move/from16 v7, p8

    .line 67
    .line 68
    move-object v8, p0

    .line 69
    move v9, p1

    .line 70
    move-object v10, v12

    .line 71
    invoke-direct/range {v0 .. v11}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel$queryNextPage$2;-><init>(JJLjava/util/ArrayList;IILcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;ILjava/lang/String;Lrs/c;)V

    .line 72
    .line 73
    .line 74
    new-instance v0, Lwk/c;

    .line 75
    .line 76
    move-object v1, p0

    .line 77
    move v2, p1

    .line 78
    invoke-direct {v0, p0, p1, v12}, Lwk/c;-><init>(Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;ILjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const/4 v2, 0x2

    .line 82
    const/4 v3, 0x0

    .line 83
    const-string v4, "queryLibraryList"

    .line 84
    .line 85
    const/4 v5, 0x0

    .line 86
    move-object p1, p0

    .line 87
    move-object/from16 p2, v4

    .line 88
    .line 89
    move/from16 p3, v5

    .line 90
    .line 91
    move-object/from16 p4, v13

    .line 92
    .line 93
    move-object/from16 p5, v0

    .line 94
    .line 95
    move/from16 p6, v2

    .line 96
    .line 97
    move-object/from16 p7, v3

    .line 98
    .line 99
    invoke-static/range {p1 .. p7}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->j(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method private static final O(Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;ILjava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->e:Lfk/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Lfk/x;->f()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/library/b$b;

    .line 9
    .line 10
    new-instance v2, Ljava/lang/Throwable;

    .line 11
    .line 12
    invoke-direct {v2, p3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v2}, Ljk/z;->a(Ljava/lang/Throwable;)Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    invoke-virtual {p0, p3}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->p(Lcom/startshorts/androidplayer/bean/exception/ResponseException;)Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-direct {v1, p1, p2, p0}, Lcom/startshorts/androidplayer/viewmodel/library/b$b;-><init>(ILjava/lang/String;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 30
    .line 31
    return-object p0
.end method


# virtual methods
.method public final E(JJLandroid/util/LongSparseArray;)Ljava/lang/String;
    .locals 2
    .param p5    # Landroid/util/LongSparseArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Landroid/util/LongSparseArray<",
            "Lcom/startshorts/androidplayer/bean/library/LibraryCategory;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p1, "classIdMap"

    .line 2
    .line 3
    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p5}, Landroid/util/LongSparseArray;->size()I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    const/4 p3, 0x0

    .line 19
    :goto_0
    if-ge p3, p2, :cond_0

    .line 20
    .line 21
    invoke-virtual {p5, p3}, Landroid/util/LongSparseArray;->keyAt(I)J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    invoke-virtual {p5, p3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p4

    .line 29
    check-cast p4, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;

    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    add-int/lit8 p3, p3, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string p2, "toString(...)"

    .line 42
    .line 43
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object p1
.end method

.method public final F()Lcom/startshorts/androidplayer/bean/library/LoadLibrary;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->g:Lcom/startshorts/androidplayer/bean/library/LoadLibrary;

    .line 2
    .line 3
    return-object v0
.end method

.method public final G()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/library/b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->f:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final H()Lfk/x;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->e:Lfk/x;

    .line 2
    .line 3
    return-object v0
.end method

.method public final J(Lcom/startshorts/androidplayer/viewmodel/library/a;)V
    .locals 9
    .param p1    # Lcom/startshorts/androidplayer/viewmodel/library/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "intent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/library/a$a;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->K()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/library/a$b;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/library/a$b;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/library/a$b;->e()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/library/a$b;->d()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/library/a$b;->b()J

    .line 29
    .line 30
    .line 31
    move-result-wide v4

    .line 32
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/library/a$b;->a()Landroid/util/LongSparseArray;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/library/a$b;->c()I

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->e:Lfk/x;

    .line 41
    .line 42
    invoke-virtual {p1}, Lfk/x;->c()I

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    move-object v0, p0

    .line 47
    invoke-direct/range {v0 .. v8}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->N(IJJLandroid/util/LongSparseArray;II)V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void

    .line 51
    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 52
    .line 53
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 54
    .line 55
    .line 56
    throw p1
.end method
