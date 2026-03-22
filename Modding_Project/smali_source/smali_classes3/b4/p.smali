.class public final Lb4/p;
.super Ljava/lang/Object;
.source "DefaultFlexByteArrayPoolParams.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lb4/p;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lb4/p;

    .line 2
    .line 3
    invoke-direct {v0}, Lb4/p;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lb4/p;->a:Lb4/p;

    .line 7
    .line 8
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    sput v0, Lb4/p;->b:I

    .line 17
    .line 18
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final a(III)Landroid/util/SparseIntArray;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 4
    .line 5
    .line 6
    :goto_0
    if-gt p0, p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p0, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 9
    .line 10
    .line 11
    mul-int/lit8 p0, p0, 0x2

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    return-object v0
.end method

.method public static final b()Lb4/e0;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v7, Lb4/e0;

    .line 2
    .line 3
    sget v6, Lb4/p;->b:I

    .line 4
    .line 5
    const/high16 v0, 0x400000

    .line 6
    .line 7
    mul-int v2, v6, v0

    .line 8
    .line 9
    const/high16 v1, 0x20000

    .line 10
    .line 11
    invoke-static {v1, v0, v6}, Lb4/p;->a(III)Landroid/util/SparseIntArray;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const/high16 v4, 0x20000

    .line 16
    .line 17
    const/high16 v5, 0x400000

    .line 18
    .line 19
    const/high16 v1, 0x400000

    .line 20
    .line 21
    move-object v0, v7

    .line 22
    invoke-direct/range {v0 .. v6}, Lb4/e0;-><init>(IILandroid/util/SparseIntArray;III)V

    .line 23
    .line 24
    .line 25
    return-object v7
.end method
