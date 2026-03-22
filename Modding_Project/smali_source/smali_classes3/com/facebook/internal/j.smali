.class public final Lcom/facebook/internal/j;
.super Ljava/lang/Object;
.source "FacebookSignatureValidator.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFacebookSignatureValidator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FacebookSignatureValidator.kt\ncom/facebook/internal/FacebookSignatureValidator\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,60:1\n12541#2,2:61\n*S KotlinDebug\n*F\n+ 1 FacebookSignatureValidator.kt\ncom/facebook/internal/FacebookSignatureValidator\n*L\n52#1:61,2\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/facebook/internal/j;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/facebook/internal/j;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/facebook/internal/j;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/facebook/internal/j;->a:Lcom/facebook/internal/j;

    .line 7
    .line 8
    const-string v6, "2438bce1ddb7bd026d5ff89f598b3b5e5bb824b3"

    .line 9
    .line 10
    const-string v7, "c56fb7d591ba6704df047fd98f535372fea00211"

    .line 11
    .line 12
    const-string v1, "8a3c4b262d721acd49a4bf97d5213199c86fa2b9"

    .line 13
    .line 14
    const-string v2, "cc2751449a350f668590264ed76692694a80308a"

    .line 15
    .line 16
    const-string v3, "a4b7452e2ed8f5f191058ca7bbfd26b0d3214bfc"

    .line 17
    .line 18
    const-string v4, "df6b721c8b4d3b6eb44c861d4415007e5a35fc95"

    .line 19
    .line 20
    const-string v5, "9b8f518b086098de3d77736f9458a3d2f6f95a37"

    .line 21
    .line 22
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lkotlin/collections/y0;->g([Ljava/lang/Object;)Ljava/util/HashSet;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lcom/facebook/internal/j;->b:Ljava/util/HashSet;

    .line 31
    .line 32
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

.method public static final a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "packageInfo.signatures"

    .line 2
    .line 3
    const-string v1, "context"

    .line 4
    .line 5
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "packageName"

    .line 9
    .line 10
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 20
    .line 21
    const-string v3, "brand"

    .line 22
    .line 23
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    const-string v4, "generic"

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    const/4 v6, 0x2

    .line 31
    invoke-static {v1, v4, v5, v6, v3}, Lkotlin/text/StringsKt;->V(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/4 v3, 0x1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    and-int/lit8 v1, v2, 0x2

    .line 39
    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    return v3

    .line 43
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    const/16 v1, 0x40

    .line 48
    .line 49
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    iget-object p1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 54
    .line 55
    if-eqz p1, :cond_4

    .line 56
    .line 57
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    array-length p1, p1

    .line 61
    if-nez p1, :cond_1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 65
    .line 66
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    array-length p1, p0

    .line 70
    move v0, v5

    .line 71
    :goto_0
    if-ge v0, p1, :cond_3

    .line 72
    .line 73
    aget-object v1, p0, v0

    .line 74
    .line 75
    sget-object v2, Lcom/facebook/internal/j;->b:Ljava/util/HashSet;

    .line 76
    .line 77
    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    const-string v4, "it.toByteArray()"

    .line 82
    .line 83
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-static {v1}, Lcom/facebook/internal/u0;->F0([B)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->g0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    if-nez v1, :cond_2

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    move v5, v3

    .line 101
    :catch_0
    :cond_4
    :goto_1
    return v5
.end method
