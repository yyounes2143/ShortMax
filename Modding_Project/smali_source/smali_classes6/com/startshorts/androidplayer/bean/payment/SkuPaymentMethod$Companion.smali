.class public final Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod$Companion;
.super Ljava/lang/Object;
.source "SkuPaymentMethod.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final formatCycleCount(II)Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p2, v0, :cond_2

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p2, v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    if-eq p2, v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x5

    .line 11
    if-eq p2, v0, :cond_2

    .line 12
    .line 13
    const/4 v0, 0x6

    .line 14
    if-eq p2, v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x7

    .line 17
    if-eq p2, v0, :cond_0

    .line 18
    .line 19
    const-string p1, ""

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    sget-object p2, Lfk/u;->a:Lfk/u;

    .line 23
    .line 24
    sget v0, Lcom/startshorts/androidplayer/R$string;->sub_expansion_new_dialog_cycle_count_year:I

    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p2, v0, p1}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    sget-object p2, Lfk/u;->a:Lfk/u;

    .line 40
    .line 41
    sget v0, Lcom/startshorts/androidplayer/R$string;->sub_expansion_new_dialog_cycle_count_month:I

    .line 42
    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p2, v0, p1}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    sget-object p2, Lfk/u;->a:Lfk/u;

    .line 57
    .line 58
    sget v0, Lcom/startshorts/androidplayer/R$string;->sub_expansion_new_dialog_cycle_count_week:I

    .line 59
    .line 60
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p2, v0, p1}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    :goto_0
    return-object p1
.end method
