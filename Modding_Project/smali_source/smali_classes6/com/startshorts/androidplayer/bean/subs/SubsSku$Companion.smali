.class public final Lcom/startshorts/androidplayer/bean/subs/SubsSku$Companion;
.super Ljava/lang/Object;
.source "SubsSku.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/bean/subs/SubsSku;
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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCardName(I)Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_5

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_4

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    if-eq p1, v0, :cond_3

    .line 9
    .line 10
    const/4 v0, 0x5

    .line 11
    if-eq p1, v0, :cond_2

    .line 12
    .line 13
    const/4 v0, 0x6

    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x7

    .line 17
    if-eq p1, v0, :cond_0

    .line 18
    .line 19
    sget-object p1, Lfk/u;->a:Lfk/u;

    .line 20
    .line 21
    sget v0, Lcom/startshorts/androidplayer/R$string;->profile_subscription_view_unsupport_product:I

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lfk/u;->d(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    sget-object p1, Lfk/u;->a:Lfk/u;

    .line 29
    .line 30
    sget v0, Lcom/startshorts/androidplayer/R$string;->profile_subscription_view_annual_pro_card:I

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lfk/u;->d(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    sget-object p1, Lfk/u;->a:Lfk/u;

    .line 38
    .line 39
    sget v0, Lcom/startshorts/androidplayer/R$string;->profile_subscription_view_monthly_pro_card:I

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lfk/u;->d(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    sget-object p1, Lfk/u;->a:Lfk/u;

    .line 47
    .line 48
    sget v0, Lcom/startshorts/androidplayer/R$string;->profile_subscription_view_weekly_pro_card:I

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Lfk/u;->d(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    sget-object p1, Lfk/u;->a:Lfk/u;

    .line 56
    .line 57
    sget v0, Lcom/startshorts/androidplayer/R$string;->profile_subscription_view_annual_card:I

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Lfk/u;->d(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    goto :goto_0

    .line 64
    :cond_4
    sget-object p1, Lfk/u;->a:Lfk/u;

    .line 65
    .line 66
    sget v0, Lcom/startshorts/androidplayer/R$string;->profile_subscription_view_monthly_card:I

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Lfk/u;->d(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    goto :goto_0

    .line 73
    :cond_5
    sget-object p1, Lfk/u;->a:Lfk/u;

    .line 74
    .line 75
    sget v0, Lcom/startshorts/androidplayer/R$string;->profile_subscription_view_weekly_card:I

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Lfk/u;->d(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    :goto_0
    return-object p1
.end method
