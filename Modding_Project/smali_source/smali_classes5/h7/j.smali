.class final Lh7/j;
.super Ljava/lang/Object;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh7/j$b;
    }
.end annotation


# static fields
.field private static final a:Lh7/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lh7/j;->a()Lh7/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lh7/j;->a:Lh7/i;

    .line 6
    .line 7
    return-void
.end method

.method private static a()Lh7/i;
    .locals 2

    .line 1
    new-instance v0, Lh7/j$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lh7/j$b;-><init>(Lh7/j$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, ""

    .line 4
    .line 5
    :cond_0
    return-object p0
.end method
