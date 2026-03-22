.class public abstract Le8/f0$a;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le8/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le8/f0$a$a;,
        Le8/f0$a$b;
    }
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

.method public static a()Le8/f0$a$b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Le8/c$b;

    .line 2
    .line 3
    invoke-direct {v0}, Le8/c$b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract b()Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le8/f0$a$a;",
            ">;"
        }
    .end annotation
.end method

.method public abstract c()I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract d()I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract e()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract f()J
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract g()I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract h()J
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract i()J
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract j()Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method
