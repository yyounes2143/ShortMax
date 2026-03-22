.class public final Landroidx/compose/ui/text/input/GapBufferKt;
.super Ljava/lang/Object;
.source "GapBuffer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final synthetic access$toCharArray(Ljava/lang/String;[CIII)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/text/input/GapBufferKt;->toCharArray(Ljava/lang/String;[CIII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final toCharArray(Ljava/lang/String;[CIII)V
    .locals 3

    .line 1
    move v0, p3

    .line 2
    :goto_0
    if-ge v0, p4, :cond_0

    .line 3
    .line 4
    add-int v1, p2, v0

    .line 5
    .line 6
    sub-int/2addr v1, p3

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    aput-char v2, p1, v1

    .line 12
    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-void
.end method

.method static synthetic toCharArray$default(Ljava/lang/String;[CIIIILjava/lang/Object;)V
    .locals 1

    .line 1
    and-int/lit8 p6, p5, 0x2

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p6, :cond_0

    .line 5
    .line 6
    move p2, v0

    .line 7
    :cond_0
    and-int/lit8 p6, p5, 0x4

    .line 8
    .line 9
    if-eqz p6, :cond_1

    .line 10
    .line 11
    move p3, v0

    .line 12
    :cond_1
    and-int/lit8 p5, p5, 0x8

    .line 13
    .line 14
    if-eqz p5, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result p4

    .line 20
    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/text/input/GapBufferKt;->toCharArray(Ljava/lang/String;[CIII)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
