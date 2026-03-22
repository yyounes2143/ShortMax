.class final Lqu/e;
.super Lqu/d;
.source "RxJavaObservableExecutionHookDefault.java"


# static fields
.field private static final a:Lqu/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lqu/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lqu/e;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lqu/e;->a:Lqu/e;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lqu/d;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static f()Lqu/d;
    .locals 1

    .line 1
    sget-object v0, Lqu/e;->a:Lqu/e;

    .line 2
    .line 3
    return-object v0
.end method
