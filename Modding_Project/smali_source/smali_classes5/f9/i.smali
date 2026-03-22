.class public Lf9/i;
.super Ljava/lang/Object;
.source "FirebaseRemoteConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf9/i$b;
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:J


# direct methods
.method private constructor <init>(Lf9/i$b;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lf9/i$b;->a(Lf9/i$b;)J

    move-result-wide v0

    iput-wide v0, p0, Lf9/i;->a:J

    .line 4
    invoke-static {p1}, Lf9/i$b;->b(Lf9/i$b;)J

    move-result-wide v0

    iput-wide v0, p0, Lf9/i;->b:J

    return-void
.end method

.method synthetic constructor <init>(Lf9/i$b;Lf9/i$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lf9/i;-><init>(Lf9/i$b;)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lf9/i;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lf9/i;->b:J

    .line 2
    .line 3
    return-wide v0
.end method
