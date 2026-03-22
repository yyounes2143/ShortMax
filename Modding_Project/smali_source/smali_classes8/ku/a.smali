.class public Lku/a;
.super Ljava/lang/Object;
.source "Completable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lku/a$e;,
        Lku/a$d;
    }
.end annotation


# static fields
.field static final b:Lku/a;

.field static final c:Lku/a;


# instance fields
.field private final a:Lku/a$d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lku/a;

    .line 2
    .line 3
    new-instance v1, Lku/a$b;

    .line 4
    .line 5
    invoke-direct {v1}, Lku/a$b;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v0, v1, v2}, Lku/a;-><init>(Lku/a$d;Z)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lku/a;->b:Lku/a;

    .line 13
    .line 14
    new-instance v0, Lku/a;

    .line 15
    .line 16
    new-instance v1, Lku/a$c;

    .line 17
    .line 18
    invoke-direct {v1}, Lku/a$c;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1, v2}, Lku/a;-><init>(Lku/a$d;Z)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lku/a;->c:Lku/a;

    .line 25
    .line 26
    return-void
.end method

.method protected constructor <init>(Lku/a$d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lqu/c;->c(Lku/a$d;)Lku/a$d;

    move-result-object p1

    iput-object p1, p0, Lku/a;->a:Lku/a$d;

    return-void
.end method

.method protected constructor <init>(Lku/a$d;Z)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 4
    invoke-static {p1}, Lqu/c;->c(Lku/a$d;)Lku/a$d;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lku/a;->a:Lku/a$d;

    return-void
.end method

.method public static a(Lku/a$d;)Lku/a;
    .locals 1

    .line 1
    invoke-static {p0}, Lku/a;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    :try_start_0
    new-instance v0, Lku/a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lku/a;-><init>(Lku/a$d;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    return-object v0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p0

    .line 13
    goto :goto_1

    .line 14
    :goto_0
    invoke-static {p0}, Lqu/c;->f(Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Lku/a;->d(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    throw p0

    .line 22
    :goto_1
    throw p0
.end method

.method public static b(Lku/c;)Lku/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lku/c<",
            "*>;)",
            "Lku/a;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lku/a;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lku/a$a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lku/a$a;-><init>(Lku/c;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lku/a;->a(Lku/a$d;)Lku/a;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method static c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method static d(Ljava/lang/Throwable;)Ljava/lang/NullPointerException;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/NullPointerException;

    .line 2
    .line 3
    const-string v1, "Actually not, but can\'t pass out an exception otherwise..."

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
