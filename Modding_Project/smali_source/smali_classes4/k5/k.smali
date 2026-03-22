.class public abstract Lk5/k;
.super Ljava/lang/Object;
.source "PersistedEvent.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
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

.method public static a(JLc5/p;Lc5/i;)Lk5/k;
    .locals 1

    .line 1
    new-instance v0, Lk5/b;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lk5/b;-><init>(JLc5/p;Lc5/i;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract b()Lc5/i;
.end method

.method public abstract c()J
.end method

.method public abstract d()Lc5/p;
.end method
