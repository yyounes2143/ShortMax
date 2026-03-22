.class public abstract Li9/d;
.super Ljava/lang/Object;
.source "RolloutAssignment.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li9/d$a;
    }
.end annotation


# static fields
.field public static final a:Lp8/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lr8/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lr8/d;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Li9/a;->a:Lq8/a;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lr8/d;->j(Lq8/a;)Lr8/d;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lr8/d;->i()Lp8/a;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Li9/d;->a:Lp8/a;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a()Li9/d$a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Li9/b$b;

    .line 2
    .line 3
    invoke-direct {v0}, Li9/b$b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract b()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract c()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract d()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract e()J
.end method

.method public abstract f()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
