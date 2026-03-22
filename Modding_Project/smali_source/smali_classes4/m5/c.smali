.class public final Lm5/c;
.super Ljava/lang/Object;
.source "TimeModule_EventClockFactory.java"

# interfaces
.implements Le5/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm5/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le5/b<",
        "Lm5/a;",
        ">;"
    }
.end annotation


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

.method public static a()Lm5/c;
    .locals 1

    .line 1
    invoke-static {}, Lm5/c$a;->a()Lm5/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static b()Lm5/a;
    .locals 1

    .line 1
    invoke-static {}, Lm5/b;->a()Lm5/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Le5/d;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lm5/a;

    .line 10
    .line 11
    return-object v0
.end method


# virtual methods
.method public c()Lm5/a;
    .locals 1

    .line 1
    invoke-static {}, Lm5/c;->b()Lm5/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lm5/c;->c()Lm5/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
