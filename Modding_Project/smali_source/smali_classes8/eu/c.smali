.class public Leu/c;
.super Ljava/lang/Object;
.source "SubstituteLoggingEvent.java"

# interfaces
.implements Leu/b;


# instance fields
.field a:Lorg/slf4j/event/Level;

.field b:Ljava/lang/String;

.field c:Lorg/slf4j/helpers/b;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:[Ljava/lang/Object;

.field g:J

.field h:Ljava/lang/Throwable;


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
.method public a()Lorg/slf4j/helpers/b;
    .locals 1

    .line 1
    iget-object v0, p0, Leu/c;->c:Lorg/slf4j/helpers/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public b([Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/c;->f:[Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public c(Lorg/slf4j/event/Level;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/c;->a:Lorg/slf4j/event/Level;

    .line 2
    .line 3
    return-void
.end method

.method public d(Lorg/slf4j/helpers/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/c;->c:Lorg/slf4j/helpers/b;

    .line 2
    .line 3
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/c;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public f(Lorg/slf4j/Marker;)V
    .locals 0

    .line 1
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/c;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/c;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public i(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Leu/c;->h:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-void
.end method

.method public j(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Leu/c;->g:J

    .line 2
    .line 3
    return-void
.end method
