.class public final Lb4/o;
.super Ljava/lang/Object;
.source "DefaultByteArrayPoolParams.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lb4/o;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lb4/o;

    .line 2
    .line 3
    invoke-direct {v0}, Lb4/o;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lb4/o;->a:Lb4/o;

    .line 7
    .line 8
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

.method public static final a()Lb4/e0;
    .locals 4
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
    const/16 v1, 0x4000

    .line 7
    .line 8
    const/4 v2, 0x5

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lb4/e0;

    .line 13
    .line 14
    const v2, 0x14000

    .line 15
    .line 16
    .line 17
    const/high16 v3, 0x100000

    .line 18
    .line 19
    invoke-direct {v1, v2, v3, v0}, Lb4/e0;-><init>(IILandroid/util/SparseIntArray;)V

    .line 20
    .line 21
    .line 22
    return-object v1
.end method
