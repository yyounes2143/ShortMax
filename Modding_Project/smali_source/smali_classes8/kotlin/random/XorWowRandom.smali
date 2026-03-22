.class public final Lkotlin/random/XorWowRandom;
.super Lkotlin/random/Random;
.source "XorWowRandom.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/random/XorWowRandom$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nXorWowRandom.kt\nKotlin\n*S Kotlin\n*F\n+ 1 XorWowRandom.kt\nkotlin/random/XorWowRandom\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,60:1\n1#2:61\n*E\n"
    }
.end annotation


# static fields
.field private static final i:Lkotlin/random/XorWowRandom$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlin/random/XorWowRandom$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lkotlin/random/XorWowRandom$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lkotlin/random/XorWowRandom;->i:Lkotlin/random/XorWowRandom$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(II)V
    .locals 7

    not-int v5, p1

    shl-int/lit8 v0, p1, 0xa

    ushr-int/lit8 v1, p2, 0x4

    xor-int v6, v0, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 10
    invoke-direct/range {v0 .. v6}, Lkotlin/random/XorWowRandom;-><init>(IIIIII)V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/random/Random;-><init>()V

    .line 2
    iput p1, p0, Lkotlin/random/XorWowRandom;->c:I

    .line 3
    iput p2, p0, Lkotlin/random/XorWowRandom;->d:I

    .line 4
    iput p3, p0, Lkotlin/random/XorWowRandom;->e:I

    .line 5
    iput p4, p0, Lkotlin/random/XorWowRandom;->f:I

    .line 6
    iput p5, p0, Lkotlin/random/XorWowRandom;->g:I

    .line 7
    iput p6, p0, Lkotlin/random/XorWowRandom;->h:I

    or-int/2addr p1, p2

    or-int/2addr p1, p3

    or-int/2addr p1, p4

    or-int/2addr p1, p5

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    const/16 p2, 0x40

    if-ge p1, p2, :cond_0

    .line 8
    invoke-virtual {p0}, Lkotlin/random/XorWowRandom;->f()I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Initial state must have at least one non-zero element."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public d(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/random/XorWowRandom;->f()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0, p1}, Lkotlin/random/d;->g(II)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public f()I
    .locals 3

    .line 1
    iget v0, p0, Lkotlin/random/XorWowRandom;->c:I

    .line 2
    .line 3
    ushr-int/lit8 v1, v0, 0x2

    .line 4
    .line 5
    xor-int/2addr v0, v1

    .line 6
    iget v1, p0, Lkotlin/random/XorWowRandom;->d:I

    .line 7
    .line 8
    iput v1, p0, Lkotlin/random/XorWowRandom;->c:I

    .line 9
    .line 10
    iget v1, p0, Lkotlin/random/XorWowRandom;->e:I

    .line 11
    .line 12
    iput v1, p0, Lkotlin/random/XorWowRandom;->d:I

    .line 13
    .line 14
    iget v1, p0, Lkotlin/random/XorWowRandom;->f:I

    .line 15
    .line 16
    iput v1, p0, Lkotlin/random/XorWowRandom;->e:I

    .line 17
    .line 18
    iget v1, p0, Lkotlin/random/XorWowRandom;->g:I

    .line 19
    .line 20
    iput v1, p0, Lkotlin/random/XorWowRandom;->f:I

    .line 21
    .line 22
    shl-int/lit8 v2, v0, 0x1

    .line 23
    .line 24
    xor-int/2addr v0, v2

    .line 25
    xor-int/2addr v0, v1

    .line 26
    shl-int/lit8 v1, v1, 0x4

    .line 27
    .line 28
    xor-int/2addr v0, v1

    .line 29
    iput v0, p0, Lkotlin/random/XorWowRandom;->g:I

    .line 30
    .line 31
    iget v1, p0, Lkotlin/random/XorWowRandom;->h:I

    .line 32
    .line 33
    const v2, 0x587c5

    .line 34
    .line 35
    .line 36
    add-int/2addr v1, v2

    .line 37
    iput v1, p0, Lkotlin/random/XorWowRandom;->h:I

    .line 38
    .line 39
    add-int/2addr v0, v1

    .line 40
    return v0
.end method
