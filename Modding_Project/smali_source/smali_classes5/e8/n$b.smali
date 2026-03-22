.class final Le8/n$b;
.super Le8/f0$e$d$a$b$b;
.source "AutoValue_CrashlyticsReport_Session_Event_Application_Execution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le8/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le8/f0$e$d$a$b$e;",
            ">;"
        }
    .end annotation
.end field

.field private b:Le8/f0$e$d$a$b$c;

.field private c:Le8/f0$a;

.field private d:Le8/f0$e$d$a$b$d;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le8/f0$e$d$a$b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le8/f0$e$d$a$b$b;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()Le8/f0$e$d$a$b;
    .locals 8

    .line 1
    iget-object v4, p0, Le8/n$b;->d:Le8/f0$e$d$a$b$d;

    .line 2
    .line 3
    if-eqz v4, :cond_1

    .line 4
    .line 5
    iget-object v5, p0, Le8/n$b;->e:Ljava/util/List;

    .line 6
    .line 7
    if-nez v5, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v7, Le8/n;

    .line 11
    .line 12
    iget-object v1, p0, Le8/n$b;->a:Ljava/util/List;

    .line 13
    .line 14
    iget-object v2, p0, Le8/n$b;->b:Le8/f0$e$d$a$b$c;

    .line 15
    .line 16
    iget-object v3, p0, Le8/n$b;->c:Le8/f0$a;

    .line 17
    .line 18
    const/4 v6, 0x0

    .line 19
    move-object v0, v7

    .line 20
    invoke-direct/range {v0 .. v6}, Le8/n;-><init>(Ljava/util/List;Le8/f0$e$d$a$b$c;Le8/f0$a;Le8/f0$e$d$a$b$d;Ljava/util/List;Le8/n$a;)V

    .line 21
    .line 22
    .line 23
    return-object v7

    .line 24
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Le8/n$b;->d:Le8/f0$e$d$a$b$d;

    .line 30
    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    const-string v1, " signal"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    :cond_2
    iget-object v1, p0, Le8/n$b;->e:Ljava/util/List;

    .line 39
    .line 40
    if-nez v1, :cond_3

    .line 41
    .line 42
    const-string v1, " binaries"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v3, "Missing required properties:"

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v1
.end method

.method public b(Le8/f0$a;)Le8/f0$e$d$a$b$b;
    .locals 0

    .line 1
    iput-object p1, p0, Le8/n$b;->c:Le8/f0$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public c(Ljava/util/List;)Le8/f0$e$d$a$b$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le8/f0$e$d$a$b$a;",
            ">;)",
            "Le8/f0$e$d$a$b$b;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Le8/n$b;->e:Ljava/util/List;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v0, "Null binaries"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public d(Le8/f0$e$d$a$b$c;)Le8/f0$e$d$a$b$b;
    .locals 0

    .line 1
    iput-object p1, p0, Le8/n$b;->b:Le8/f0$e$d$a$b$c;

    .line 2
    .line 3
    return-object p0
.end method

.method public e(Le8/f0$e$d$a$b$d;)Le8/f0$e$d$a$b$b;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Le8/n$b;->d:Le8/f0$e$d$a$b$d;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v0, "Null signal"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public f(Ljava/util/List;)Le8/f0$e$d$a$b$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le8/f0$e$d$a$b$e;",
            ">;)",
            "Le8/f0$e$d$a$b$b;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le8/n$b;->a:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method
