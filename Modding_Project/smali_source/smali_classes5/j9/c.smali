.class public final Lj9/c;
.super Ljava/lang/Object;
.source "AutoSessionEventEncoder.java"

# interfaces
.implements Lq8/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj9/c$e;,
        Lj9/c$f;,
        Lj9/c$c;,
        Lj9/c$b;,
        Lj9/c$a;,
        Lj9/c$d;
    }
.end annotation


# static fields
.field public static final a:Lq8/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lj9/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lj9/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lj9/c;->a:Lq8/a;

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
    const-class v0, Lj9/b0;

    .line 2
    .line 3
    sget-object v1, Lj9/c$e;->a:Lj9/c$e;

    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, Lq8/b;->a(Ljava/lang/Class;Lp8/c;)Lq8/b;

    .line 6
    .line 7
    .line 8
    const-class v0, Lj9/h0;

    .line 9
    .line 10
    sget-object v1, Lj9/c$f;->a:Lj9/c$f;

    .line 11
    .line 12
    invoke-interface {p1, v0, v1}, Lq8/b;->a(Ljava/lang/Class;Lp8/c;)Lq8/b;

    .line 13
    .line 14
    .line 15
    const-class v0, Lj9/d;

    .line 16
    .line 17
    sget-object v1, Lj9/c$c;->a:Lj9/c$c;

    .line 18
    .line 19
    invoke-interface {p1, v0, v1}, Lq8/b;->a(Ljava/lang/Class;Lp8/c;)Lq8/b;

    .line 20
    .line 21
    .line 22
    const-class v0, Lj9/b;

    .line 23
    .line 24
    sget-object v1, Lj9/c$b;->a:Lj9/c$b;

    .line 25
    .line 26
    invoke-interface {p1, v0, v1}, Lq8/b;->a(Ljava/lang/Class;Lp8/c;)Lq8/b;

    .line 27
    .line 28
    .line 29
    const-class v0, Lj9/a;

    .line 30
    .line 31
    sget-object v1, Lj9/c$a;->a:Lj9/c$a;

    .line 32
    .line 33
    invoke-interface {p1, v0, v1}, Lq8/b;->a(Ljava/lang/Class;Lp8/c;)Lq8/b;

    .line 34
    .line 35
    .line 36
    const-class v0, Lj9/y;

    .line 37
    .line 38
    sget-object v1, Lj9/c$d;->a:Lj9/c$d;

    .line 39
    .line 40
    invoke-interface {p1, v0, v1}, Lq8/b;->a(Ljava/lang/Class;Lp8/c;)Lq8/b;

    .line 41
    .line 42
    .line 43
    return-void
.end method
