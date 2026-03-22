.class public final Lcom/jiuzhou/cdn/CdnHelper$a;
.super Ljava/lang/Object;
.source "Comparisons.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiuzhou/cdn/CdnHelper;->w(ZLrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 CdnHelper.kt\ncom/jiuzhou/cdn/CdnHelper\n*L\n1#1,102:1\n188#2:103\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/jiuzhou/cdn/model/CdnInfo;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/jiuzhou/cdn/model/CdnInfo;->getLatency()Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-wide/32 v1, 0xea60

    .line 8
    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 13
    .line 14
    .line 15
    move-result-wide v3

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-wide v3, v1

    .line 18
    :goto_0
    long-to-float v0, v3

    .line 19
    invoke-virtual {p1}, Lcom/jiuzhou/cdn/model/CdnInfo;->getCdnWeight()F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    mul-float/2addr v0, p1

    .line 24
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p2, Lcom/jiuzhou/cdn/model/CdnInfo;

    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/jiuzhou/cdn/model/CdnInfo;->getLatency()Ljava/lang/Long;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    :cond_1
    long-to-float v0, v1

    .line 41
    invoke-virtual {p2}, Lcom/jiuzhou/cdn/model/CdnInfo;->getCdnWeight()F

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    mul-float/2addr v0, p2

    .line 46
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-static {p1, p2}, Lps/a;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    return p1
.end method
