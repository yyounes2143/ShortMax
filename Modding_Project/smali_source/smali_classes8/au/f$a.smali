.class public Lau/f$a;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lau/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public static a()Lau/f;
    .locals 1

    .line 1
    invoke-static {}, Lbu/a;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lbu/a;->b()Lbu/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lbu/a;->a:Lau/f;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    new-instance v0, Lau/f$b;

    .line 15
    .line 16
    invoke-direct {v0}, Lau/f$b;-><init>()V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method
