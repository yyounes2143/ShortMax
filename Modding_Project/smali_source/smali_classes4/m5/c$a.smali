.class final Lm5/c$a;
.super Ljava/lang/Object;
.source "TimeModule_EventClockFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm5/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lm5/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lm5/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lm5/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lm5/c$a;->a:Lm5/c;

    .line 7
    .line 8
    return-void
.end method

.method static synthetic a()Lm5/c;
    .locals 1

    .line 1
    sget-object v0, Lm5/c$a;->a:Lm5/c;

    .line 2
    .line 3
    return-object v0
.end method
