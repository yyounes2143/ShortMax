.class final Lc5/k$a;
.super Ljava/lang/Object;
.source "ExecutionModule_ExecutorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc5/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lc5/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc5/k;

    .line 2
    .line 3
    invoke-direct {v0}, Lc5/k;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lc5/k$a;->a:Lc5/k;

    .line 7
    .line 8
    return-void
.end method

.method static synthetic a()Lc5/k;
    .locals 1

    .line 1
    sget-object v0, Lc5/k$a;->a:Lc5/k;

    .line 2
    .line 3
    return-object v0
.end method
