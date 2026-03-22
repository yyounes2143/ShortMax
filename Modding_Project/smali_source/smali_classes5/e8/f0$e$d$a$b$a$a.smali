.class public abstract Le8/f0$e$d$a$b$a$a;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le8/f0$e$d$a$b$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
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


# virtual methods
.method public abstract a()Le8/f0$e$d$a$b$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract b(J)Le8/f0$e$d$a$b$a$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract c(Ljava/lang/String;)Le8/f0$e$d$a$b$a$a;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract d(J)Le8/f0$e$d$a$b$a$a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract e(Ljava/lang/String;)Le8/f0$e$d$a$b$a$a;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public f([B)Le8/f0$e$d$a$b$a$a;
    .locals 2
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {}, Le8/f0;->a()Ljava/nio/charset/Charset;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Le8/f0$e$d$a$b$a$a;->e(Ljava/lang/String;)Le8/f0$e$d$a$b$a$a;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method
