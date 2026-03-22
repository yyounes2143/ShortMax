.class final Lqu/c$m;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"

# interfaces
.implements Lmu/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqu/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmu/d<",
        "Lku/a;",
        "Lku/a$d;",
        "Lku/a$d;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lku/a;

    .line 2
    .line 3
    check-cast p2, Lku/a$d;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lqu/c$m;->b(Lku/a;Lku/a$d;)Lku/a$d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public b(Lku/a;Lku/a$d;)Lku/a$d;
    .locals 1

    .line 1
    invoke-static {}, Lqu/f;->c()Lqu/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lqu/f;->a()Lqu/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1, p2}, Lqu/a;->d(Lku/a;Lku/a$d;)Lku/a$d;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
