.class public final Lc5/a;
.super Ljava/lang/Object;
.source "AutoProtoEncoderDoNotUseEncoder.java"

# interfaces
.implements Lq8/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc5/a$f;,
        Lc5/a$b;,
        Lc5/a$c;,
        Lc5/a$d;,
        Lc5/a$g;,
        Lc5/a$a;,
        Lc5/a$e;
    }
.end annotation


# static fields
.field public static final a:Lq8/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc5/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lc5/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lc5/a;->a:Lq8/a;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lq8/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq8/b<",
            "*>;)V"
        }
    .end annotation

    .line 1
    const-class v0, Lc5/m;

    .line 2
    .line 3
    sget-object v1, Lc5/a$e;->a:Lc5/a$e;

    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, Lq8/b;->a(Ljava/lang/Class;Lp8/c;)Lq8/b;

    .line 6
    .line 7
    .line 8
    const-class v0, Lf5/a;

    .line 9
    .line 10
    sget-object v1, Lc5/a$a;->a:Lc5/a$a;

    .line 11
    .line 12
    invoke-interface {p1, v0, v1}, Lq8/b;->a(Ljava/lang/Class;Lp8/c;)Lq8/b;

    .line 13
    .line 14
    .line 15
    const-class v0, Lf5/e;

    .line 16
    .line 17
    sget-object v1, Lc5/a$g;->a:Lc5/a$g;

    .line 18
    .line 19
    invoke-interface {p1, v0, v1}, Lq8/b;->a(Ljava/lang/Class;Lp8/c;)Lq8/b;

    .line 20
    .line 21
    .line 22
    const-class v0, Lf5/c;

    .line 23
    .line 24
    sget-object v1, Lc5/a$d;->a:Lc5/a$d;

    .line 25
    .line 26
    invoke-interface {p1, v0, v1}, Lq8/b;->a(Ljava/lang/Class;Lp8/c;)Lq8/b;

    .line 27
    .line 28
    .line 29
    const-class v0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;

    .line 30
    .line 31
    sget-object v1, Lc5/a$c;->a:Lc5/a$c;

    .line 32
    .line 33
    invoke-interface {p1, v0, v1}, Lq8/b;->a(Ljava/lang/Class;Lp8/c;)Lq8/b;

    .line 34
    .line 35
    .line 36
    const-class v0, Lf5/b;

    .line 37
    .line 38
    sget-object v1, Lc5/a$b;->a:Lc5/a$b;

    .line 39
    .line 40
    invoke-interface {p1, v0, v1}, Lq8/b;->a(Ljava/lang/Class;Lp8/c;)Lq8/b;

    .line 41
    .line 42
    .line 43
    const-class v0, Lf5/d;

    .line 44
    .line 45
    sget-object v1, Lc5/a$f;->a:Lc5/a$f;

    .line 46
    .line 47
    invoke-interface {p1, v0, v1}, Lq8/b;->a(Ljava/lang/Class;Lp8/c;)Lq8/b;

    .line 48
    .line 49
    .line 50
    return-void
.end method
