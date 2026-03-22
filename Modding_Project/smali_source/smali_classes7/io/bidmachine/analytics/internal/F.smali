.class public final Lio/bidmachine/analytics/internal/F;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/internal/F$a;,
        Lio/bidmachine/analytics/internal/F$b;
    }
.end annotation


# static fields
.field public static final c:Lio/bidmachine/analytics/internal/F$a;


# instance fields
.field private final a:Lkotlin/text/Regex;

.field private final b:Lio/bidmachine/analytics/internal/N;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/F$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lio/bidmachine/analytics/internal/F$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lio/bidmachine/analytics/internal/F;->c:Lio/bidmachine/analytics/internal/F$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lkotlin/text/Regex;

    .line 5
    .line 6
    const-string v1, "^(\\d{2}-\\d{2} \\d{2}:\\d{2}:\\d{2}\\.\\d{3}) ([A-Z])\\/(\\S+)\\(\\s*(\\d+)\\): (.*)$"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lio/bidmachine/analytics/internal/F;->a:Lkotlin/text/Regex;

    .line 12
    .line 13
    new-instance v0, Lio/bidmachine/analytics/internal/N;

    .line 14
    .line 15
    invoke-direct {v0}, Lio/bidmachine/analytics/internal/N;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lio/bidmachine/analytics/internal/F;->b:Lio/bidmachine/analytics/internal/N;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lio/bidmachine/analytics/internal/F$b;
    .locals 8

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/F;->a:Lkotlin/text/Regex;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-static {v0, p1, v1, v2, v3}, Lkotlin/text/Regex;->f(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-interface {p1}, Lkotlin/text/MatchResult;->a()Lkotlin/text/MatchResult$b;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lkotlin/text/MatchResult$b;->a()Lkotlin/text/MatchResult;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {v0}, Lkotlin/text/MatchResult;->c()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p1}, Lkotlin/text/MatchResult$b;->a()Lkotlin/text/MatchResult;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v1}, Lkotlin/text/MatchResult;->c()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    move-object v6, v1

    .line 44
    check-cast v6, Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p1}, Lkotlin/text/MatchResult$b;->a()Lkotlin/text/MatchResult;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-interface {v1}, Lkotlin/text/MatchResult;->c()Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const/4 v2, 0x3

    .line 55
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    move-object v5, v1

    .line 60
    check-cast v5, Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p1}, Lkotlin/text/MatchResult$b;->a()Lkotlin/text/MatchResult;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-interface {p1}, Lkotlin/text/MatchResult;->c()Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const/4 v1, 0x5

    .line 71
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    move-object v7, p1

    .line 76
    check-cast v7, Ljava/lang/String;

    .line 77
    .line 78
    iget-object p1, p0, Lio/bidmachine/analytics/internal/F;->b:Lio/bidmachine/analytics/internal/N;

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Lio/bidmachine/analytics/internal/N;->a(Ljava/lang/String;)Ljava/lang/Long;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-eqz p1, :cond_0

    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 87
    .line 88
    .line 89
    move-result-wide v0

    .line 90
    :goto_0
    move-wide v3, v0

    .line 91
    goto :goto_1

    .line 92
    :cond_0
    const-wide/16 v0, 0x0

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :goto_1
    new-instance p1, Lio/bidmachine/analytics/internal/F$b;

    .line 96
    .line 97
    move-object v2, p1

    .line 98
    invoke-direct/range {v2 .. v7}, Lio/bidmachine/analytics/internal/F$b;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    move-object v3, p1

    .line 102
    :cond_1
    return-object v3
.end method
