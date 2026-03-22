.class public final Lrx/exceptions/OnErrorThrowable;
.super Ljava/lang/RuntimeException;
.source "OnErrorThrowable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/exceptions/OnErrorThrowable$OnNextValue;
    }
.end annotation


# direct methods
.method public static b(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    new-instance p0, Ljava/lang/NullPointerException;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {p0}, Llu/a;->b(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    instance-of v1, v0, Lrx/exceptions/OnErrorThrowable$OnNextValue;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    check-cast v0, Lrx/exceptions/OnErrorThrowable$OnNextValue;

    .line 17
    .line 18
    invoke-virtual {v0}, Lrx/exceptions/OnErrorThrowable$OnNextValue;->b()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-ne v0, p1, :cond_1

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_1
    new-instance v0, Lrx/exceptions/OnErrorThrowable$OnNextValue;

    .line 26
    .line 27
    invoke-direct {v0, p1}, Lrx/exceptions/OnErrorThrowable$OnNextValue;-><init>(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p0, v0}, Llu/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    return-object p0
.end method
