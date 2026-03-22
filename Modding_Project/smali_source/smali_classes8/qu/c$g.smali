.class final Lqu/c$g;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"

# interfaces
.implements Lmu/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqu/c;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmu/c<",
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
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lku/a$d;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lqu/c$g;->b(Lku/a$d;)Lku/a$d;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public b(Lku/a$d;)Lku/a$d;
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
    invoke-virtual {v0, p1}, Lqu/a;->a(Lku/a$d;)Lku/a$d;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
