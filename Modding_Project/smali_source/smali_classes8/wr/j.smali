.class public final Lwr/j;
.super Ljava/lang/Object;
.source "HttpHeaders.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final synthetic a(C)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lwr/j;->b(C)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final b(C)Z
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "\"(),/:;<=>?@[\\]{}"

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-static {v2, p0, v3, v0, v1}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method
