.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[C
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "0123456789ABCDEF"

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "toCharArray(...)"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/h0;->a:[C

    .line 14
    .line 15
    return-void
.end method

.method public static final a([B)Ljava/lang/String;
    .locals 7
    .param p0    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    array-length v0, p0

    .line 7
    mul-int/lit8 v0, v0, 0x2

    .line 8
    .line 9
    new-array v0, v0, [C

    .line 10
    .line 11
    array-length v1, p0

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_0

    .line 14
    .line 15
    aget-byte v3, p0, v2

    .line 16
    .line 17
    and-int/lit16 v4, v3, 0xff

    .line 18
    .line 19
    mul-int/lit8 v5, v2, 0x2

    .line 20
    .line 21
    sget-object v6, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/h0;->a:[C

    .line 22
    .line 23
    ushr-int/lit8 v4, v4, 0x4

    .line 24
    .line 25
    aget-char v4, v6, v4

    .line 26
    .line 27
    aput-char v4, v0, v5

    .line 28
    .line 29
    add-int/lit8 v5, v5, 0x1

    .line 30
    .line 31
    and-int/lit8 v3, v3, 0xf

    .line 32
    .line 33
    aget-char v3, v6, v3

    .line 34
    .line 35
    aput-char v3, v0, v5

    .line 36
    .line 37
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance p0, Ljava/lang/String;

    .line 41
    .line 42
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    .line 43
    .line 44
    .line 45
    return-object p0
.end method
