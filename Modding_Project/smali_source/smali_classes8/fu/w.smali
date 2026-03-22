.class final Lfu/w;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field static final a:Ljava/util/concurrent/Executor;

.field static final b:Lfu/x;

.field static final c:Lfu/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "java.vm.name"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const-string v2, "RoboVM"

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    const-string v2, "Dalvik"

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    sput-object v1, Lfu/w;->a:Ljava/util/concurrent/Executor;

    .line 28
    .line 29
    new-instance v0, Lfu/x$b;

    .line 30
    .line 31
    invoke-direct {v0}, Lfu/x$b;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lfu/w;->b:Lfu/x;

    .line 35
    .line 36
    new-instance v0, Lfu/c$a;

    .line 37
    .line 38
    invoke-direct {v0}, Lfu/c$a;-><init>()V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lfu/w;->c:Lfu/c;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance v0, Lfu/a;

    .line 45
    .line 46
    invoke-direct {v0}, Lfu/a;-><init>()V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lfu/w;->a:Ljava/util/concurrent/Executor;

    .line 50
    .line 51
    new-instance v0, Lfu/x$a;

    .line 52
    .line 53
    invoke-direct {v0}, Lfu/x$a;-><init>()V

    .line 54
    .line 55
    .line 56
    sput-object v0, Lfu/w;->b:Lfu/x;

    .line 57
    .line 58
    new-instance v0, Lfu/c$a;

    .line 59
    .line 60
    invoke-direct {v0}, Lfu/c$a;-><init>()V

    .line 61
    .line 62
    .line 63
    sput-object v0, Lfu/w;->c:Lfu/c;

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    sput-object v1, Lfu/w;->a:Ljava/util/concurrent/Executor;

    .line 67
    .line 68
    new-instance v0, Lfu/x;

    .line 69
    .line 70
    invoke-direct {v0}, Lfu/x;-><init>()V

    .line 71
    .line 72
    .line 73
    sput-object v0, Lfu/w;->b:Lfu/x;

    .line 74
    .line 75
    new-instance v0, Lfu/c;

    .line 76
    .line 77
    invoke-direct {v0}, Lfu/c;-><init>()V

    .line 78
    .line 79
    .line 80
    sput-object v0, Lfu/w;->c:Lfu/c;

    .line 81
    .line 82
    :goto_0
    return-void
.end method
