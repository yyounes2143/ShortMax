.class public abstract Ld5/f;
.super Ljava/lang/Object;
.source "CreationContext.java"


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

.method public static a(Landroid/content/Context;Lm5/a;Lm5/a;Ljava/lang/String;)Ld5/f;
    .locals 1

    .line 1
    new-instance v0, Ld5/b;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Ld5/b;-><init>(Landroid/content/Context;Lm5/a;Lm5/a;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract b()Landroid/content/Context;
.end method

.method public abstract c()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract d()Lm5/a;
.end method

.method public abstract e()Lm5/a;
.end method
