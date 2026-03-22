.class public final Lio/ktor/util/date/a;
.super Ljava/lang/Object;
.source "DateJvm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDateJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DateJvm.kt\nio/ktor/util/date/DateJvmKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,78:1\n1#2:79\n*E\n"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "GMT"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lio/ktor/util/date/a;->a:Ljava/util/TimeZone;

    .line 8
    .line 9
    return-void
.end method

.method public static final a(Ljava/lang/Long;)Lbs/a;
    .locals 2
    .param p0    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lio/ktor/util/date/a;->a:Ljava/util/TimeZone;

    .line 2
    .line 3
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0, p0}, Lio/ktor/util/date/a;->c(Ljava/util/Calendar;Ljava/lang/Long;)Lbs/a;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static synthetic b(Ljava/lang/Long;ILjava/lang/Object;)Lbs/a;
    .locals 0

    .line 1
    and-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    :cond_0
    invoke-static {p0}, Lio/ktor/util/date/a;->a(Ljava/lang/Long;)Lbs/a;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final c(Ljava/util/Calendar;Ljava/lang/Long;)Lbs/a;
    .locals 13
    .param p0    # Ljava/util/Calendar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 13
    .line 14
    .line 15
    :cond_0
    const/16 p1, 0xf

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/16 v0, 0x10

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    add-int/2addr p1, v0

    .line 28
    const/16 v0, 0xd

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const/16 v0, 0xc

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    const/16 v0, 0xb

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    const/4 v0, 0x7

    .line 47
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    const/4 v5, 0x5

    .line 52
    add-int/2addr v1, v5

    .line 53
    rem-int/2addr v1, v0

    .line 54
    sget-object v0, Lio/ktor/util/date/WeekDay;->Companion:Lio/ktor/util/date/WeekDay$a;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lio/ktor/util/date/WeekDay$a;->a(I)Lio/ktor/util/date/WeekDay;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    const/4 v1, 0x6

    .line 65
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    sget-object v1, Lio/ktor/util/date/Month;->Companion:Lio/ktor/util/date/Month$a;

    .line 70
    .line 71
    const/4 v5, 0x2

    .line 72
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    invoke-virtual {v1, v5}, Lio/ktor/util/date/Month$a;->a(I)Lio/ktor/util/date/Month;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    const/4 v1, 0x1

    .line 81
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    .line 82
    .line 83
    .line 84
    move-result v9

    .line 85
    new-instance v12, Lbs/a;

    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 88
    .line 89
    .line 90
    move-result-wide v10

    .line 91
    int-to-long p0, p1

    .line 92
    add-long/2addr v10, p0

    .line 93
    move-object v1, v12

    .line 94
    move-object v5, v0

    .line 95
    invoke-direct/range {v1 .. v11}, Lbs/a;-><init>(IIILio/ktor/util/date/WeekDay;IILio/ktor/util/date/Month;IJ)V

    .line 96
    .line 97
    .line 98
    return-object v12
.end method
