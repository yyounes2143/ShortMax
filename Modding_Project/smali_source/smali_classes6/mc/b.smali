.class public Lmc/b;
.super Ljava/lang/Object;
.source "TTVideoLog.java"


# static fields
.field public static a:I = 0x70


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lmc/b;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    shr-int/2addr v0, v1

    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const-string v0, "<%s>%s"

    .line 9
    .line 10
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string p1, "TTVideoLog"

    .line 19
    .line 20
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    sget v0, Lmc/b;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    shr-int/2addr v0, v1

    .line 5
    and-int/2addr v0, v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lmc/b;->a:I

    .line 2
    .line 3
    shr-int/lit8 v0, v0, 0x6

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    and-int/2addr v0, v1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const-string v0, "<%s>%s"

    .line 10
    .line 11
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string p1, "TTVideoLog"

    .line 20
    .line 21
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public static final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lmc/b;->a:I

    .line 2
    .line 3
    shr-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    and-int/2addr v0, v1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const-string v0, "<%s>%s"

    .line 10
    .line 11
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string p1, "TTVideoLog"

    .line 20
    .line 21
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public static final e(II)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    shl-int/2addr v0, p0

    .line 3
    not-int v0, v0

    .line 4
    sget v1, Lmc/b;->a:I

    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    shl-int p0, p1, p0

    .line 8
    .line 9
    or-int/2addr p0, v0

    .line 10
    sput p0, Lmc/b;->a:I

    .line 11
    .line 12
    return-void
.end method
