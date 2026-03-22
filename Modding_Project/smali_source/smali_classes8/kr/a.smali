.class public Lkr/a;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field private static final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x1

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sput-wide v0, Lkr/a;->a:J

    .line 10
    .line 11
    return-void
.end method

.method public static a(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 2
    .param p0    # Ljava/util/Calendar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 5
    .line 6
    .line 7
    const/16 v0, 0xc

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 10
    .line 11
    .line 12
    const/16 v0, 0xd

    .line 13
    .line 14
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 15
    .line 16
    .line 17
    const/16 v0, 0xe

    .line 18
    .line 19
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 20
    .line 21
    .line 22
    return-object p0
.end method

.method public static b(Ljava/util/Date;)Ljava/util/Calendar;
    .locals 1
    .param p0    # Ljava/util/Date;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static c(Ljava/util/Date;Ljava/util/Date;)I
    .locals 2
    .param p0    # Ljava/util/Date;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Date;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lkr/a;->b(Ljava/util/Date;)Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lkr/a;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p1}, Lkr/a;->b(Ljava/util/Date;)Ljava/util/Calendar;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Lkr/a;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide p0

    .line 25
    sub-long/2addr v0, p0

    .line 26
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    .line 27
    .line 28
    .line 29
    move-result-wide p0

    .line 30
    sget-wide v0, Lkr/a;->a:J

    .line 31
    .line 32
    div-long/2addr p0, v0

    .line 33
    long-to-int p0, p0

    .line 34
    return p0
.end method
