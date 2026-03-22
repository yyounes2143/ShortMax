.class public final Lcom/apm/insight/entity/c;
.super Lcom/apm/insight/entity/a;
.source "EventBody.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/apm/insight/entity/a;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/apm/insight/entity/c;->a:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static a(Ljava/lang/StackTraceElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/apm/insight/entity/c;
    .locals 5
    .param p0    # Ljava/lang/StackTraceElement;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/apm/insight/entity/c;

    .line 2
    .line 3
    invoke-direct {v0, p6}, Lcom/apm/insight/entity/c;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    const-string v3, "event_type"

    .line 19
    .line 20
    const-string v4, "exception"

    .line 21
    .line 22
    invoke-virtual {v0, v3, v4}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    const-string v3, "log_type"

    .line 26
    .line 27
    invoke-virtual {v0, v3, p6}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    .line 32
    .line 33
    move-result-wide v3

    .line 34
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 35
    .line 36
    .line 37
    move-result-object p6

    .line 38
    const-string/jumbo v3, "timestamp"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v3, p6}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 45
    .line 46
    .line 47
    move-result-wide v3

    .line 48
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 49
    .line 50
    .line 51
    move-result-object p6

    .line 52
    const-string v3, "crash_time"

    .line 53
    .line 54
    invoke-virtual {v0, v3, p6}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    const-string p6, "class_ref"

    .line 58
    .line 59
    invoke-virtual {v0, p6, v1}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    const-string p6, "method"

    .line 63
    .line 64
    invoke-virtual {v0, p6, v2}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    const-string p6, "line_num"

    .line 72
    .line 73
    invoke-virtual {v0, p6, p0}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    const-string p0, "stack"

    .line 77
    .line 78
    invoke-virtual {v0, p0, p1}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    const/4 p0, 0x1

    .line 82
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    const-string p1, "exception_type"

    .line 87
    .line 88
    invoke-virtual {v0, p1, p0}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    const-string p0, "ensure_type"

    .line 92
    .line 93
    invoke-virtual {v0, p0, p5}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    const-string p1, "is_core"

    .line 101
    .line 102
    invoke-virtual {v0, p1, p0}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    const-string p0, "message"

    .line 106
    .line 107
    invoke-virtual {v0, p0, p2}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    invoke-static {}, Lcom/apm/insight/e;->g()Landroid/content/Context;

    .line 111
    .line 112
    .line 113
    invoke-static {}, Lcom/apm/insight/l/a;->b()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    const-string p1, "process_name"

    .line 118
    .line 119
    invoke-virtual {v0, p1, p0}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    const-string p0, "crash_thread_name"

    .line 123
    .line 124
    invoke-virtual {v0, p0, p3}, Lcom/apm/insight/entity/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/apm/insight/entity/a;->c()Lorg/json/JSONObject;

    .line 128
    .line 129
    .line 130
    move-result-object p0

    .line 131
    invoke-static {p0}, Lcom/apm/insight/entity/d;->b(Lorg/json/JSONObject;)V

    .line 132
    .line 133
    .line 134
    return-object v0
.end method
