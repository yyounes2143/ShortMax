.class public final Lb2/a$a;
.super Ljava/lang/Object;
.source "MTensor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMTensor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MTensor.kt\ncom/facebook/appevents/ml/MTensor$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,40:1\n19339#2,7:41\n*S KotlinDebug\n*F\n+ 1 MTensor.kt\ncom/facebook/appevents/ml/MTensor$Companion\n*L\n37#1:41,7\n*E\n"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb2/a$a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lb2/a$a;[I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lb2/a$a;->b([I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final b([I)I
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    if-eqz v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    aget v0, p1, v0

    .line 6
    .line 7
    new-instance v1, Lkotlin/ranges/IntRange;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-static {p1}, Lkotlin/collections/n;->p0([I)I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    invoke-direct {v1, v2, v3}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lkotlin/ranges/d;->f()Lkotlin/collections/m0;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1}, Lkotlin/collections/m0;->nextInt()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    aget v2, p1, v2

    .line 32
    .line 33
    mul-int/2addr v0, v2

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return v0

    .line 36
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 37
    .line 38
    const-string v0, "Empty array can\'t be reduced."

    .line 39
    .line 40
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1
.end method
