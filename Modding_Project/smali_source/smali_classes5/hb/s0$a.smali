.class Lhb/s0$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhb/s0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Z

.field private c:J

.field final synthetic d:Lhb/s0;


# direct methods
.method constructor <init>(Lhb/s0;J)V
    .locals 3

    .line 1
    iput-object p1, p0, Lhb/s0$a;->d:Lhb/s0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "-"

    .line 15
    .line 16
    const-string v2, ""

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lhb/s0$a;->a:Ljava/lang/String;

    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lhb/s0$a;->a:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, "_"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lhb/s0$a;->a:Ljava/lang/String;

    .line 47
    .line 48
    iput-wide p2, p0, Lhb/s0$a;->c:J

    .line 49
    .line 50
    const/4 p2, 0x1

    .line 51
    iput-boolean p2, p0, Lhb/s0$a;->b:Z

    .line 52
    .line 53
    const/4 p2, 0x0

    .line 54
    invoke-static {p1, p2}, Lhb/s0;->d(Lhb/s0;Z)Z

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method private b(JJ)Z
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1, p3, p4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 13
    .line 14
    .line 15
    const/4 p2, 0x1

    .line 16
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    .line 21
    .line 22
    .line 23
    move-result p4

    .line 24
    if-ne p3, p4, :cond_1

    .line 25
    .line 26
    const/4 p3, 0x6

    .line 27
    invoke-virtual {v0, p3}, Ljava/util/Calendar;->get(I)I

    .line 28
    .line 29
    .line 30
    move-result p4

    .line 31
    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eq p4, p1, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 p2, 0x0

    .line 39
    :cond_1
    :goto_0
    return p2
.end method

.method private c(J)V
    .locals 3

    .line 1
    const-string v0, "hmsSdk"

    .line 2
    .line 3
    const-string v1, "getNewSession() session is flush!"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lhb/f1;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lhb/s0$a;->a:Ljava/lang/String;

    .line 17
    .line 18
    const-string v1, "-"

    .line 19
    .line 20
    const-string v2, ""

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lhb/s0$a;->a:Ljava/lang/String;

    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lhb/s0$a;->a:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, "_"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lhb/s0$a;->a:Ljava/lang/String;

    .line 51
    .line 52
    iput-wide p1, p0, Lhb/s0$a;->c:J

    .line 53
    .line 54
    const/4 p1, 0x1

    .line 55
    iput-boolean p1, p0, Lhb/s0$a;->b:Z

    .line 56
    .line 57
    return-void
.end method

.method private d(JJ)Z
    .locals 0

    .line 1
    sub-long/2addr p3, p1

    .line 2
    iget-object p1, p0, Lhb/s0$a;->d:Lhb/s0;

    .line 3
    .line 4
    invoke-static {p1}, Lhb/s0;->e(Lhb/s0;)J

    .line 5
    .line 6
    .line 7
    move-result-wide p1

    .line 8
    cmp-long p1, p3, p1

    .line 9
    .line 10
    if-ltz p1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    return p1
.end method


# virtual methods
.method a(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lhb/s0$a;->d:Lhb/s0;

    .line 2
    .line 3
    invoke-static {v0}, Lhb/s0;->c(Lhb/s0;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lhb/s0$a;->d:Lhb/s0;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lhb/s0;->d(Lhb/s0;Z)Z

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1, p2}, Lhb/s0$a;->c(J)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-wide v2, p0, Lhb/s0$a;->c:J

    .line 20
    .line 21
    invoke-direct {p0, v2, v3, p1, p2}, Lhb/s0$a;->d(JJ)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    iget-wide v2, p0, Lhb/s0$a;->c:J

    .line 28
    .line 29
    invoke-direct {p0, v2, v3, p1, p2}, Lhb/s0$a;->b(JJ)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iput-wide p1, p0, Lhb/s0$a;->c:J

    .line 37
    .line 38
    iput-boolean v1, p0, Lhb/s0$a;->b:Z

    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    :goto_0
    invoke-direct {p0, p1, p2}, Lhb/s0$a;->c(J)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
