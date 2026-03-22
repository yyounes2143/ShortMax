.class public final Lcom/google/ads/mediation/bidmachine/common/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/ads/mediation/bidmachine/common/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/mediation/bidmachine/common/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/ads/mediation/bidmachine/common/f;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/ads/mediation/bidmachine/common/f;->a:Lcom/google/ads/mediation/bidmachine/common/f;

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

.method public static final a(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 2

    .line 1
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Double;

    goto :goto_0

    :cond_0
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/ads/mediation/bidmachine/common/f;->a:Lcom/google/ads/mediation/bidmachine/common/f;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/google/ads/mediation/bidmachine/common/f;->a(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private final a(Ljava/lang/String;)Ljava/lang/Double;
    .locals 7

    if-eqz p1, :cond_3

    .line 2
    invoke-static {p1}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x6

    const/4 v6, 0x0

    const/16 v2, 0x2e

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    :try_start_0
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->x0(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/16 v2, 0x2c

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->x0(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v1

    if-le v0, v1, :cond_1

    sget-object v0, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    :goto_0
    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    goto :goto_2

    :catch_0
    :cond_3
    :goto_1
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    :goto_2
    return-object p1
.end method
